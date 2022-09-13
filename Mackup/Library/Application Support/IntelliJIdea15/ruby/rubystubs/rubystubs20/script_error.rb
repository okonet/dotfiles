=begin
 This is a machine generated stub using stdlib-doc for <b>class ScriptError</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# ScriptError is the superclass for errors raised when a script
# can not be executed because of a +LoadError+,
# +NotImplementedError+ or a +SyntaxError+. Note these type of
# +ScriptErrors+ are not +StandardError+ and will not be
# rescued unless it is specified explicitly (or its ancestor
# +Exception+).
class ScriptError < Exception
end
