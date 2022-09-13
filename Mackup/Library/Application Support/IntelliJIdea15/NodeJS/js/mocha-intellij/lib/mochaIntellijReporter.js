var Tree = require('./mochaIntellijTree')
  , util = require('./mochaIntellijUtil')
  , treeUtil = require('./mochaTreeUtil')
  , normalizer = require('./normalizer');

/**
 * @param {Tree} tree
 * @param test mocha test object
 * @returns {TestSuiteNode}
 */
function findOrCreateAndRegisterSuiteNode(tree, test) {
  var suites = getSuitesFromRootDownTo(test.parent);
  var parentNode = tree.root, suiteId;
  for (suiteId = 0; suiteId < suites.length; suiteId++) {
    var suite = suites[suiteId];
    var suiteName = suite.title;
    var childNode = treeUtil.getNodeForSuite(suite);
    if (!childNode) {
      var locationPath = getLocationPath(test.file, parentNode, suiteName);
      childNode = parentNode.addTestSuiteChild(suiteName, 'suite', locationPath);
      childNode.register();
      treeUtil.setNodeForSuite(suite, childNode);
    }
    parentNode = childNode;
  }
  return parentNode;
}

function getSuitesFromRootDownTo(suite) {
  var suites = [];
  var s = suite;
  while (s != null && !s.root) {
    suites.push(s);
    s = s.parent;
  }
  suites.reverse();
  return suites;
}

/**
 * @param {string} testFilePath test file path
 * @param {TestSuiteNode} parent
 * @param {string} childName
 * @returns {string}
 */
function getLocationPath(testFilePath, parent, childName) {
  var names = []
    , node = parent
    , root = node.tree.root;
  while (node !== root) {
    names.push(node.name);
    node = node.parent;
  }
  names.push(testFilePath || '');
  names.reverse();
  names.push(childName);
  return util.joinList(names, 0, names.length, '.');
}

function stringify(value) {
  try {
    var mochaUtils = util.requireMochaModule('./lib/utils');
    if (mochaUtils != null && typeof mochaUtils.stringify === 'function') {
      return mochaUtils.stringify(value);
    }
  }
  catch (e) {
    // do nothing
  }
  var normalizedValue = normalizer.deepCopyAndNormalize(value);
  if (normalizedValue instanceof RegExp) {
    return normalizedValue.toString();
  }
  if (normalizedValue === undefined) {
    return 'undefined';
  }
  return JSON.stringify(normalizedValue, null, 2);
}

function extractErrInfo(err) {
  var message = err.message || ''
    , stack = err.stack;
  if (!util.isString(stack) || stack.trim().length == 0) {
    return {
      message: message
    }
  }
  var index = stack.indexOf(message);
  if (index >= 0) {
    message = stack.slice(0, index + message.length);
    stack = stack.slice(message.length);
    var nl = '\n';
    if (stack.indexOf(nl) === 0) {
      stack = stack.substring(nl.length);
    }
  }
  return {
    message : message,
    stack : stack
  }
}

/**
 * @param {Tree} tree
 * @param test mocha test object
 * @returns {TestNode}
 */
function registerTestNode(tree, test) {
  var testNode = treeUtil.getNodeForTest(test);
  if (testNode != null) {
    throw Error("Test node has already been associated!");
  }
  var suiteNode = findOrCreateAndRegisterSuiteNode(tree, test);
  var locationPath = getLocationPath(test.file, suiteNode, test.title);
  testNode = suiteNode.addTestChild(test.title, 'test', locationPath);
  testNode.register();
  treeUtil.setNodeForTest(test, testNode);
  return testNode;
}

/**
 * @param {Tree} tree
 * @param test mocha test object
 * @returns {TestNode}
 */
function startTest(tree, test) {
  var testNode = treeUtil.getNodeForTest(test);
  if (testNode == null) {
    testNode = registerTestNode(tree, test);
  }
  testNode.start();
  return testNode;
}

/**
 *
 * @param {TestNode} testNode
 * @param {*} err
 */
function addStdErr(testNode, err) {
  if (err != null) {
    if (util.isString(err)) {
      testNode.addStdErr(err);
    }
    else {
      var errInfo = extractErrInfo(err);
      if (errInfo != null) {
        var out = errInfo.message || errInfo.stack;
        if (errInfo.message && errInfo.stack) {
          out = errInfo.message + '\n' + errInfo.stack;
        }
        testNode.addStdErr(out);
      }
    }
  }
}

/**
 * @param {Tree} tree
 * @param {Object} test mocha test object
 * @param {Object} err mocha error object
 */
function finishTestNode(tree, test, err) {
  var testNode = treeUtil.getNodeForTest(test);
  if (testNode != null && testNode.isFinished()) {
    /* See https://youtrack.jetbrains.com/issue/WEB-10637
       A test can be reported as failed and passed at the same test run if a error is raised using
         this.test.error(new Error(...));
       At least all errors should be presented to a user. */
    addStdErr(testNode, err);
    return;
  }
  testNode = startTest(tree, test);
  if (err) {
    var errInfo = extractErrInfo(err);
    var actualStr, expectedStr;
    if (Object.prototype.hasOwnProperty.call(err, 'actual') && Object.prototype.hasOwnProperty.call(err, 'expected')) {
      actualStr = stringify(err.actual);
      expectedStr = stringify(err.expected);
      if (!util.isString(actualStr) || !util.isString(expectedStr)) {
        actualStr = null;
        expectedStr = null;
      }
    }
    testNode.setOutcome(Tree.TestOutcome.FAILED, test.duration, errInfo.message, errInfo.stack, actualStr, expectedStr);
  }
  else {
    var status = test.pending ? Tree.TestOutcome.SKIPPED : Tree.TestOutcome.SUCCESS;
    testNode.setOutcome(status, test.duration, null, null, null, null);
  }
  testNode.finish(false);
}

/**
 * @param {Object} test mocha test object
 * @return {boolean}
 */
function isHook(test) {
  return test.type === 'hook';
}

/**
 * @param {Object} test mocha test object
 * @return {boolean}
 */
function isBeforeAllHook(test) {
  return isHook(test) && test.title === '"before all" hook';
}

/**
 * @param {Object} test mocha test object
 * @return {boolean}
 */
function isBeforeEachHook(test) {
  return isHook(test) && test.title === '"before each" hook';
}

/**
 * @param {Tree} tree
 * @param {Object} suite mocha suite
 * @param {string} cause
 */
function markChildrenFailed(tree, suite, cause) {
  suite.tests.forEach(function (test) {
    var testNode = treeUtil.getNodeForTest(test);
    if (testNode != null) {
      finishTestNode(tree, test, {message: cause});
    }
  });
}

function getCurrentTest(ctx) {
  return ctx != null ? ctx.currentTest : null;
}

function handleBeforeEachHookFailure(tree, beforeEachHook, err) {
  var done = false;
  var currentTest = getCurrentTest(beforeEachHook.ctx);
  if (currentTest != null) {
    var testNode = treeUtil.getNodeForTest(currentTest);
    if (testNode != null) {
      finishTestNode(tree, currentTest, err);
      done = true;
    }
  }
  if (!done) {
    finishTestNode(tree, beforeEachHook, err);
  }
}

/**
 * @param {Object} suite mocha suite object
 */
function finishSuite(suite) {
  var suiteNode = treeUtil.getNodeForSuite(suite);
  if (suiteNode == null) {
    throw Error('Cannot find suite node for ' + suite.title);
  }
  suiteNode.finish(false);
}

function IntellijReporter(runner) {
  var Base = util.requireBaseReporter();
  if (Base != null) {
    Base.call(this, runner);
  }

  var executeSafely = util.executeSafely;
  var tree;

  runner.on('start', function () {
    executeSafely(function () {
      tree = new Tree(function (str) {
        util.writeToStdout(str);
      });
      tree.writeln('##teamcity[enteredTheMatrix]');

      var tests = [];
      treeUtil.forEachTest(runner, function (test) {
        var match = true;
        if (runner._grep instanceof RegExp) {
          match = runner._grep.test(test.fullTitle());
        }
        if (match) {
          tests.push(test);
        }
      });

      tree.writeln('##teamcity[testCount count=\'' + tests.length + '\']');
      tests.forEach(function (test) {
        registerTestNode(tree, test);
      });
    });
  });

  runner.on('test', function (test) {
    executeSafely(function () {
      startTest(tree, test);
    });
  });

  runner.on('pending', function (test) {
    executeSafely(function () {
      finishTestNode(tree, test, null);
    });
  });

  runner.on('pass', function (test) {
    executeSafely(function () {
      finishTestNode(tree, test, null);
    });
  });

  runner.on('fail', function (test, err) {
    executeSafely(function () {
      if (isBeforeEachHook(test)) {
        handleBeforeEachHookFailure(tree, test, err);
      }
      else if (isBeforeAllHook(test)) {
        finishTestNode(tree, test, err);
        markChildrenFailed(tree, test.parent, test.title + " failed");
      }
      else {
        finishTestNode(tree, test, err);
      }
    });
  });

  runner.on('suite end', function (suite) {
    executeSafely(function () {
      if (!suite.root) {
        finishSuite(suite);
      }
    });
  });

  runner.on('end', function () {
    executeSafely(function () {
      tree = null;
    });
  });

}

module.exports = IntellijReporter;
