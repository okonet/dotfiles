var coreModuleNames = Array.prototype.slice.call(process.argv, 2);
var loadedCoreModuleNames = [];

coreModuleNames.forEach(function (coreModuleName) {
    try {
        var coreModule = require(coreModuleName);
        loadedCoreModuleNames.push(coreModuleName);
    }
    catch (err) {
        console.error('Failed to load ' + coreModuleName, err);
    }
});

console.log('Loaded core modules: ' + loadedCoreModuleNames);
console.log('@debugger: core modules loaded, ready for communication');
process.stdin.resume();
