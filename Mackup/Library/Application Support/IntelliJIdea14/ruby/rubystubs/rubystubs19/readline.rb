=begin
 This is a machine generated stub using stdlib-doc for <b>module Readline</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The Readline module provides interface for GNU Readline.
# This module defines a number of methods to facilitate completion
# and accesses input history from the Ruby interpreter.
# This module supported Edit Line(libedit) too.
# libedit is compatible with GNU Readline.
# 
# GNU Readline:: http://www.gnu.org/directory/readline.html
# libedit::      http://www.thrysoee.dk/editline/
# 
# Reads one inputted line with line edit by Readline.readline method.
# At this time, the facilitatation completion and the key
# bind like Emacs can be operated like GNU Readline.
# 
#   require "readline"
#   while buf = Readline.readline("> ", true)
#     p buf
#   end
# 
# The content that the user input can be recorded to the history.
# The history can be accessed by Readline::HISTORY constant.
# 
#   require "readline"
#   while buf = Readline.readline("> ", true)
#     p Readline::HISTORY.to_a
#     print("-> ", buf, "\n")
#   end
# 
# Most of methods raise SecurityError exception if $SAFE is 4.
# 
# Documented by TAKAO Kouji <kouji at takao7 dot net>.
module Readline
    # The history buffer. It extends Enumerable module, so it behaves
    # just like an array.
    # For example, gets the fifth content that the user input by
    # HISTORY[4].
    HISTORY = nil #value is unknown, used for indexing.
    # The Object with the call method that is a completion for filename.
    # This is sets by Readline.completion_proc= method.
    FILENAME_COMPLETION_PROC = nil #value is unknown, used for indexing.
    # The Object with the call method that is a completion for usernames.
    # This is sets by Readline.completion_proc= method.
    USERNAME_COMPLETION_PROC = nil #value is unknown, used for indexing.
    # Version string of GNU Readline or libedit.   
    VERSION = nil #value is unknown, used for indexing.
    # Readline.readline(prompt = "", add_hist = false) -> string or nil
    #  
    # Shows the +prompt+ and reads the inputted line with line editing.
    # The inputted line is added to the history if +add_hist+ is true.
    # 
    # Returns nil when the inputted line is empty and user inputs EOF
    # (Presses ^D on UNIX).
    # 
    # Raises IOError exception if below conditions are satisfied.
    # 1. stdin is not tty.
    # 2. stdin was closed. (errno is EBADF after called isatty(2).)
    # 
    # This method supports thread. Switchs the thread context when waits
    # inputting line.
    # 
    # Supports line edit when inputs line. Provides VI and Emacs editing mode.
    # Default is Emacs editing mode.
    # 
    # NOTE: Terminates ruby interpreter and does not return the terminal
    # status after user pressed '^C' when wait inputting line.
    # Give 3 examples that avoid it.
    # 
    # * Catches the Interrupt exception by pressed ^C after returns
    #   terminal status:
    # 
    #     require "readline"
    # 
    #     stty_save = `stty -g`.chomp
    #     begin
    #       while buf = Readline.readline
    #           p buf
    #           end
    #         rescue Interrupt
    #           system("stty", stty_save)
    #           exit
    #         end
    #       end
    #     end
    # 
    # * Catches the INT signal by pressed ^C after returns terminal
    #   status:
    # 
    #     require "readline"
    # 
    #     stty_save = `stty -g`.chomp
    #     trap("INT") { system "stty", stty_save; exit }
    # 
    #     while buf = Readline.readline
    #       p buf
    #     end
    # 
    # * Ignores pressing ^C:
    # 
    #     require "readline"
    # 
    #     trap("INT", "SIG_IGN")
    # 
    #     while buf = Readline.readline
    #       p buf
    #     end
    # 
    # Can make as follows with Readline::HISTORY constant.
    # It does not record to the history if the inputted line is empty or
    # the same it as last one.
    # 
    #   require "readline"
    # 
    #   while buf = Readline.readline("> ", true)
    #     # p Readline::HISTORY.to_a
    #     Readline::HISTORY.pop if /^\s*$/ =~ buf
    # 
    #     begin
    #       if Readline::HISTORY[Readline::HISTORY.length-2] == buf
    #         Readline::HISTORY.pop
    #       end
    #     rescue IndexError
    #     end
    # 
    #     # p Readline::HISTORY.to_a
    #     print "-> ", buf, "\n"
    #   end
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.readline(prompt = "", add_hist = false)
        #This is a stub, used for indexing
    end
    # Readline.input = input
    #  
    # Specifies a File object +input+ that is input stream for
    # Readline.readline method.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.input= input
        #This is a stub, used for indexing
    end
    # Readline.output = output
    #  
    # Specifies a File object +output+ that is output stream for
    # Readline.readline method.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.output= output
        #This is a stub, used for indexing
    end
    # Readline.completion_proc = proc
    #  
    # Specifies a Proc object +proc+ to determine completion behavior. It
    # should take input-string, and return an array of completion
    # candidates.
    # 
    # Set default if +proc+ is nil.
    # 
    # Raises ArgumentError exception if +proc+ does not respond to call method.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completion_proc= proc
        #This is a stub, used for indexing
    end
    # Readline.completion_proc -> proc
    #  
    # Returns the completion Proc object.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completion_proc()
        #This is a stub, used for indexing
    end
    # Readline.completion_case_fold = bool
    #  
    # Sets whether or not to ignore case on completion.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completion_case_fold= bool
        #This is a stub, used for indexing
    end
    # Readline.completion_case_fold -> bool
    #  
    # Returns true if completion ignores case. If no, returns false.
    # 
    # NOTE: Returns the same object that is specified by
    # Readline.completion_case_fold= method.
    # 
    #   require "readline"
    # 
    #   Readline.completion_case_fold = "This is a String."
    #   p Readline.completion_case_fold # => "This is a String."
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completion_case_fold()
        #This is a stub, used for indexing
    end
    # Readline.line_buffer -> string
    #  
    # Returns the full line that is being edited. This is useful from
    # within the complete_proc for determining the context of the
    # completion request.
    # 
    # The length of +Readline.line_buffer+ and GNU Readline's rl_end are
    # same.
    def self.line_buffer()
        #This is a stub, used for indexing
    end
    # Readline.point -> int
    #  
    # Returns the index of the current cursor position in
    # +Readline.line_buffer+.
    # 
    # The index in +Readline.line_buffer+ which matches the start of
    # input-string passed to completion_proc is computed by subtracting
    # the length of input-string from +Readline.point+.
    # 
    #   start = (the length of input-string) - Readline.point
    def self.point()
        #This is a stub, used for indexing
    end
    # Readline.set_screen_size(rows, columns) -> self
    #  
    # Set terminal size to +rows+ and +columns+.
    # 
    # See GNU Readline's rl_set_screen_size function.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.set_screen_size(rows, columns)
        #This is a stub, used for indexing
    end
    # Readline.get_screen_size -> [rows, columns]
    #  
    # Returns the terminal's rows and columns.
    # 
    # See GNU Readline's rl_get_screen_size function.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.get_screen_size()
        #This is a stub, used for indexing
    end
    # Readline.vi_editing_mode -> nil
    #  
    # Specifies VI editing mode. See the manual of GNU Readline for
    # details of VI editing mode.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.vi_editing_mode()
        #This is a stub, used for indexing
    end
    # Readline.vi_editing_mode? -> bool
    #  
    # Returns true if vi mode is active. Returns false if not.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.vi_editing_mode?()
        #This is a stub, used for indexing
    end
    # Readline.emacs_editing_mode -> nil
    #  
    # Specifies Emacs editing mode. The default is this mode. See the
    # manual of GNU Readline for details of Emacs editing mode.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.emacs_editing_mode()
        #This is a stub, used for indexing
    end
    # Readline.emacs_editing_mode? -> bool
    #  
    # Returns true if emacs mode is active. Returns false if not.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.emacs_editing_mode?()
        #This is a stub, used for indexing
    end
    # Readline.completion_append_character = char
    #  
    # Specifies a character to be appended on completion.
    # Nothing will be appended if an empty string ("") or nil is
    # specified.
    # 
    # For example:
    #   require "readline"
    # 
    #   Readline.readline("> ", true)
    #   Readline.completion_append_character = " "
    # 
    # Result:
    #   >
    #   Input "/var/li".
    # 
    #   > /var/li
    #   Press TAB key.
    # 
    #   > /var/lib
    #   Completes "b" and appends " ". So, you can continuously input "/usr".
    # 
    #   > /var/lib /usr
    # 
    # NOTE: Only one character can be specified. When "string" is
    # specified, sets only "s" that is the first.
    # 
    #   require "readline"
    # 
    #   Readline.completion_append_character = "string"
    #   p Readline.completion_append_character # => "s"
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completion_append_character= char
        #This is a stub, used for indexing
    end
    # Readline.completion_append_character -> char
    #  
    # Returns a string containing a character to be appended on
    # completion. The default is a space (" ").
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completion_append_character()
        #This is a stub, used for indexing
    end
    # Readline.basic_word_break_characters = string
    #  
    # Sets the basic list of characters that signal a break between words
    # for the completer routine. The default is the characters which
    # break words for completion in Bash: "\t\n\"\\'`@$><=;|&{(".
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.basic_word_break_characters= string
        #This is a stub, used for indexing
    end
    # Readline.basic_word_break_characters -> string
    #  
    # Gets the basic list of characters that signal a break between words
    # for the completer routine.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.basic_word_break_characters()
        #This is a stub, used for indexing
    end
    # Readline.completer_word_break_characters = string
    #  
    # Sets the basic list of characters that signal a break between words
    # for rl_complete_internal(). The default is the value of
    # Readline.basic_word_break_characters.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completer_word_break_characters= string
        #This is a stub, used for indexing
    end
    # Readline.completer_word_break_characters -> string
    #  
    # Gets the basic list of characters that signal a break between words
    # for rl_complete_internal().
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completer_word_break_characters()
        #This is a stub, used for indexing
    end
    # Readline.basic_quote_characters = string
    #  
    # Sets a list of quote characters which can cause a word break.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.basic_quote_characters= string
        #This is a stub, used for indexing
    end
    # Readline.basic_quote_characters -> string
    #  
    # Gets a list of quote characters which can cause a word break.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.basic_quote_characters()
        #This is a stub, used for indexing
    end
    # Readline.completer_quote_characters = string
    #  
    # Sets a list of characters which can be used to quote a substring of
    # the line. Completion occurs on the entire substring, and within
    # the substring Readline.completer_word_break_characters are treated
    # as any other character, unless they also appear within this list.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completer_quote_characters= string
        #This is a stub, used for indexing
    end
    # Readline.completer_quote_characters -> string
    #  
    # Gets a list of characters which can be used to quote a substring of
    # the line.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.completer_quote_characters()
        #This is a stub, used for indexing
    end
    # Readline.filename_quote_characters = string
    #  
    # Sets a list of characters that cause a filename to be quoted by the completer
    # when they appear in a completed filename. The default is nil.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.filename_quote_characters= string
        #This is a stub, used for indexing
    end
    # Readline.filename_quote_characters -> string
    #  
    # Gets a list of characters that cause a filename to be quoted by the completer
    # when they appear in a completed filename.
    # 
    # Raises NotImplementedError if the using readline library does not support.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.filename_quote_characters()
        #This is a stub, used for indexing
    end
    # Readline.refresh_line -> nil
    #  
    # Clear the current input line.
    # 
    # Raises SecurityError exception if $SAFE is 4.
    def self.refresh_line()
        #This is a stub, used for indexing
    end
end
