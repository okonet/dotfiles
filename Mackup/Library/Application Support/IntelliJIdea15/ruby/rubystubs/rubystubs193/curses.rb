=begin
 This is a machine generated stub using stdlib-doc for <b>module Curses</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# == Description
# An implementation of the CRT screen handling and optimization library.
# 
# == Structures and such
# 
# === Classes
# 
# * Curses::Window - class with the means to draw a window or box
# * Curses::MouseEvent - class for collecting mouse events
# 
# === Modules
# 
# Curses:: The curses implementation
# Curses::Key:: Collection of constants for keypress events
# 
# == Examples
# 
# * hello.rb
#     #!/usr/local/bin/ruby
#     
#     require "curses"
#     include Curses
#     
#     def show_message(message)
#       width = message.length + 6
#       win = Window.new(5, width,
#                 (lines - 5) / 2, (cols - width) / 2)
#       win.box(?|, ?-)
#       win.setpos(2, 3)
#       win.addstr(message)
#       win.refresh
#       win.getch
#       win.close
#     end
#     
#     init_screen
#     begin
#       crmode
#     #  show_message("Hit any key")
#       setpos((lines - 5) / 2, (cols - 10) / 2)
#       addstr("Hit any key")
#       refresh
#       getch
#       show_message("Hello, World!")
#       refresh
#     ensure
#       close_screen
#     end
# 
# * rain.rb
#     #!/usr/local/bin/ruby
#     # rain for a curses test
#     
#     require "curses"
#     include Curses
#     
#     def onsig(sig)
#       close_screen
#       exit sig
#     end
#     
#     def ranf
#       rand(32767).to_f / 32767
#     end
#     
#     # main #
#     for i in 1 .. 15  # SIGHUP .. SIGTERM
#       if trap(i, "SIG_IGN") != 0 then  # 0 for SIG_IGN
#         trap(i) {|sig| onsig(sig) }
#       end
#     end
#     
#     init_screen
#     nl
#     noecho
#     srand
#     
#     xpos = {}
#     ypos = {}
#     r = lines - 4
#     c = cols - 4
#     for i in 0 .. 4
#       xpos[i] = (c * ranf).to_i + 2
#       ypos[i] = (r * ranf).to_i + 2
#     end
#     
#     i = 0
#     while TRUE
#       x = (c * ranf).to_i + 2
#       y = (r * ranf).to_i + 2
#     
#     
#       setpos(y, x); addstr(".")
#     
#       setpos(ypos[i], xpos[i]); addstr("o")
#     
#       i = if i == 0 then 4 else i - 1 end
#       setpos(ypos[i], xpos[i]); addstr("O")
#     
#       i = if i == 0 then 4 else i - 1 end
#       setpos(ypos[i] - 1, xpos[i]);      addstr("-")
#       setpos(ypos[i],     xpos[i] - 1); addstr("|.|")
#       setpos(ypos[i] + 1, xpos[i]);      addstr("-")
#     
#       i = if i == 0 then 4 else i - 1 end
#       setpos(ypos[i] - 2, xpos[i]);       addstr("-")
#       setpos(ypos[i] - 1, xpos[i] - 1);  addstr("/ \\")
#       setpos(ypos[i],     xpos[i] - 2); addstr("| O |")
#       setpos(ypos[i] + 1, xpos[i] - 1); addstr("\\ /")
#       setpos(ypos[i] + 2, xpos[i]);       addstr("-")
#     
#       i = if i == 0 then 4 else i - 1 end
#       setpos(ypos[i] - 2, xpos[i]);       addstr(" ")
#       setpos(ypos[i] - 1, xpos[i] - 1);  addstr("   ")
#       setpos(ypos[i],     xpos[i] - 2); addstr("     ")
#       setpos(ypos[i] + 1, xpos[i] - 1);  addstr("   ")
#       setpos(ypos[i] + 2, xpos[i]);       addstr(" ")
#     
#     
#       xpos[i] = x
#       ypos[i] = y
#       refresh
#       sleep(0.5)
#     end
#     
#     # end of main
module Curses
    # Window.inch
    A_ATTRIBUTES = nil #value is unknown, used for indexing.
    # Normal display (no highlight)
    # 
    # See Curses.attrset
    A_NORMAL = nil #value is unknown, used for indexing.
    # Best highlighting mode of the terminal.
    # 
    # See Curses.attrset
    A_STANDOUT = nil #value is unknown, used for indexing.
    # Underlining
    # 
    # See Curses.attrset
    A_UNDERLINE = nil #value is unknown, used for indexing.
    # Reverse video
    # 
    # See Curses.attrset
    A_REVERSE = nil #value is unknown, used for indexing.
    # Blinking
    # 
    # See Curses.attrset
    A_BLINK = nil #value is unknown, used for indexing.
    # Half bright
    # 
    # See Curses.attrset
    A_DIM = nil #value is unknown, used for indexing.
    # Extra bright or bold
    # 
    # See Curses.attrset
    A_BOLD = nil #value is unknown, used for indexing.
    # Protected mode
    # 
    # See Curses.attrset
    A_PROTECT = nil #value is unknown, used for indexing.
    # Invisible or blank mode
    # 
    # See Curses.attrset
    A_INVIS = nil #value is unknown, used for indexing.
    # Alternate character set
    # 
    # See Curses.attrset
    A_ALTCHARSET = nil #value is unknown, used for indexing.
    # Bit-mask to extract a character
    # 
    # See Curses.attrset
    A_CHARTEXT = nil #value is unknown, used for indexing.
    # horizontal highlight
    # 
    # Check system curs_attr(3x) for support
    A_HORIZONTAL = nil #value is unknown, used for indexing.
    # left highlight
    # 
    # Check system curs_attr(3x) for support
    A_LEFT = nil #value is unknown, used for indexing.
    # low highlight
    # 
    # Check system curs_attr(3x) for support
    A_LOW = nil #value is unknown, used for indexing.
    # right highlight
    # 
    # Check system curs_attr(3x) for support
    A_RIGHT = nil #value is unknown, used for indexing.
    # top highlight
    # 
    # Check system curs_attr(3x) for support
    A_TOP = nil #value is unknown, used for indexing.
    # vertical highlight
    # 
    # Check system curs_attr(3x) for support
    A_VERTICAL = nil #value is unknown, used for indexing.
    # Window.inch
    A_COLOR = nil #value is unknown, used for indexing.
    # Number of the colors available
    COLORS = nil #value is unknown, used for indexing.
    # Value of the color black
    COLOR_BLACK = nil #value is unknown, used for indexing.
    # Value of the color red
    COLOR_RED = nil #value is unknown, used for indexing.
    # Value of the color green
    COLOR_GREEN = nil #value is unknown, used for indexing.
    # Value of the color yellow
    COLOR_YELLOW = nil #value is unknown, used for indexing.
    # Value of the color blue
    COLOR_BLUE = nil #value is unknown, used for indexing.
    # Value of the color magenta
    COLOR_MAGENTA = nil #value is unknown, used for indexing.
    # Value of the color cyan
    COLOR_CYAN = nil #value is unknown, used for indexing.
    # Value of the color white
    COLOR_WHITE = nil #value is unknown, used for indexing.
    # mouse button 1 down
    # 
    # See Curses.getmouse
    BUTTON1_PRESSED = nil #value is unknown, used for indexing.
    # mouse button 1 up
    # 
    # See Curses.getmouse
    BUTTON1_RELEASED = nil #value is unknown, used for indexing.
    # mouse button 1 clicked
    # 
    # See Curses.getmouse
    BUTTON1_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 1 double clicked
    # 
    # See Curses.getmouse
    BUTTON1_DOUBLE_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 1 triple clicked
    # 
    # See Curses.getmouse
    BUTTON1_TRIPLE_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 2 down
    # 
    # See Curses.getmouse
    BUTTON2_PRESSED = nil #value is unknown, used for indexing.
    # mouse button 2 up
    # 
    # See Curses.getmouse
    BUTTON2_RELEASED = nil #value is unknown, used for indexing.
    # mouse button 2 clicked
    # 
    # See Curses.getmouse
    BUTTON2_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 2 double clicked
    # 
    # See Curses.getmouse
    BUTTON2_DOUBLE_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 2 triple clicked
    # 
    # See Curses.getmouse
    BUTTON2_TRIPLE_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 3 down
    # 
    # See Curses.getmouse
    BUTTON3_PRESSED = nil #value is unknown, used for indexing.
    # mouse button 3 up
    # 
    # See Curses.getmouse
    BUTTON3_RELEASED = nil #value is unknown, used for indexing.
    # mouse button 3 clicked
    # 
    # See Curses.getmouse
    BUTTON3_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 3 double clicked
    # 
    # See Curses.getmouse
    BUTTON3_DOUBLE_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 3 triple clicked
    # 
    # See Curses.getmouse
    BUTTON3_TRIPLE_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 4 down
    # 
    # See Curses.getmouse
    BUTTON4_PRESSED = nil #value is unknown, used for indexing.
    # mouse button 4 up
    # 
    # See Curses.getmouse
    BUTTON4_RELEASED = nil #value is unknown, used for indexing.
    # mouse button 4 clicked
    # 
    # See Curses.getmouse
    BUTTON4_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 4 double clicked
    # 
    # See Curses.getmouse
    BUTTON4_DOUBLE_CLICKED = nil #value is unknown, used for indexing.
    # mouse button 4 triple clicked
    # 
    # See Curses.getmouse
    BUTTON4_TRIPLE_CLICKED = nil #value is unknown, used for indexing.
    # shift was down during button state change
    # 
    # See Curses.getmouse
    BUTTON_SHIFT = nil #value is unknown, used for indexing.
    # control was down during button state change
    # 
    # See Curses.getmouse
    BUTTON_CTRL = nil #value is unknown, used for indexing.
    # alt was down during button state change
    # 
    # See Curses.getmouse
    BUTTON_ALT = nil #value is unknown, used for indexing.
    # report all button state changes
    # 
    # See Curses.getmouse
    ALL_MOUSE_EVENTS = nil #value is unknown, used for indexing.
    # report mouse movement
    # 
    # See Curses.getmouse
    REPORT_MOUSE_POSITION = nil #value is unknown, used for indexing.
    # Mouse event read
    KEY_MOUSE = nil #value is unknown, used for indexing.
    # The minimum allowed curses key value.
    KEY_MIN = nil #value is unknown, used for indexing.
    # Break key
    KEY_BREAK = nil #value is unknown, used for indexing.
    # the down arrow key
    KEY_DOWN = nil #value is unknown, used for indexing.
    # the up arrow key
    KEY_UP = nil #value is unknown, used for indexing.
    # the left arrow key
    KEY_LEFT = nil #value is unknown, used for indexing.
    # the right arrow key
    KEY_RIGHT = nil #value is unknown, used for indexing.
    # Home key (upward+left arrow)
    KEY_HOME = nil #value is unknown, used for indexing.
    # Backspace
    KEY_BACKSPACE = nil #value is unknown, used for indexing.
    # Delete line
    KEY_DL = nil #value is unknown, used for indexing.
    # Insert line
    KEY_IL = nil #value is unknown, used for indexing.
    # Delete character
    KEY_DC = nil #value is unknown, used for indexing.
    # Insert char or enter insert mode
    KEY_IC = nil #value is unknown, used for indexing.
    # Enter insert char mode
    KEY_EIC = nil #value is unknown, used for indexing.
    # Clear Screen
    KEY_CLEAR = nil #value is unknown, used for indexing.
    # Clear to end of screen
    KEY_EOS = nil #value is unknown, used for indexing.
    # Clear to end of line
    KEY_EOL = nil #value is unknown, used for indexing.
    # Scroll 1 line forward
    KEY_SF = nil #value is unknown, used for indexing.
    # Scroll 1 line backware (reverse)
    KEY_SR = nil #value is unknown, used for indexing.
    # Next page
    KEY_NPAGE = nil #value is unknown, used for indexing.
    # Previous page
    KEY_PPAGE = nil #value is unknown, used for indexing.
    # Set tab
    KEY_STAB = nil #value is unknown, used for indexing.
    # Clear tab
    KEY_CTAB = nil #value is unknown, used for indexing.
    # Clear all tabs
    KEY_CATAB = nil #value is unknown, used for indexing.
    # Enter or send
    KEY_ENTER = nil #value is unknown, used for indexing.
    # Soft (partial) reset
    KEY_SRESET = nil #value is unknown, used for indexing.
    # Reset or hard reset
    KEY_RESET = nil #value is unknown, used for indexing.
    # Print or copy
    KEY_PRINT = nil #value is unknown, used for indexing.
    # Home down or bottom (lower left)
    KEY_LL = nil #value is unknown, used for indexing.
    # Upper left of keypad
    KEY_A1 = nil #value is unknown, used for indexing.
    # Upper right of keypad
    KEY_A3 = nil #value is unknown, used for indexing.
    # Center of keypad
    KEY_B2 = nil #value is unknown, used for indexing.
    # Lower left of keypad
    KEY_C1 = nil #value is unknown, used for indexing.
    # Lower right of keypad
    KEY_C3 = nil #value is unknown, used for indexing.
    # Back tab key
    KEY_BTAB = nil #value is unknown, used for indexing.
    # Beginning key
    KEY_BEG = nil #value is unknown, used for indexing.
    # Cancel key
    KEY_CANCEL = nil #value is unknown, used for indexing.
    # Close key
    KEY_CLOSE = nil #value is unknown, used for indexing.
    # Cmd (command) key
    KEY_COMMAND = nil #value is unknown, used for indexing.
    # Copy key
    KEY_COPY = nil #value is unknown, used for indexing.
    # Create key
    KEY_CREATE = nil #value is unknown, used for indexing.
    # End key
    KEY_END = nil #value is unknown, used for indexing.
    # Exit key
    KEY_EXIT = nil #value is unknown, used for indexing.
    # Find key
    KEY_FIND = nil #value is unknown, used for indexing.
    # Help key
    KEY_HELP = nil #value is unknown, used for indexing.
    # Mark key
    KEY_MARK = nil #value is unknown, used for indexing.
    # Message key
    KEY_MESSAGE = nil #value is unknown, used for indexing.
    # Move key
    KEY_MOVE = nil #value is unknown, used for indexing.
    # Next object key
    KEY_NEXT = nil #value is unknown, used for indexing.
    # Open key
    KEY_OPEN = nil #value is unknown, used for indexing.
    # Options key
    KEY_OPTIONS = nil #value is unknown, used for indexing.
    # Previous object key
    KEY_PREVIOUS = nil #value is unknown, used for indexing.
    # Redo key
    KEY_REDO = nil #value is unknown, used for indexing.
    # Reference key
    KEY_REFERENCE = nil #value is unknown, used for indexing.
    # Refresh key
    KEY_REFRESH = nil #value is unknown, used for indexing.
    # Replace key
    KEY_REPLACE = nil #value is unknown, used for indexing.
    # Restart key
    KEY_RESTART = nil #value is unknown, used for indexing.
    # Resume key
    KEY_RESUME = nil #value is unknown, used for indexing.
    # Save key
    KEY_SAVE = nil #value is unknown, used for indexing.
    # Shifted beginning key
    KEY_SBEG = nil #value is unknown, used for indexing.
    # Shifted cancel key
    KEY_SCANCEL = nil #value is unknown, used for indexing.
    # Shifted command key
    KEY_SCOMMAND = nil #value is unknown, used for indexing.
    # Shifted copy key
    KEY_SCOPY = nil #value is unknown, used for indexing.
    # Shifted create key
    KEY_SCREATE = nil #value is unknown, used for indexing.
    # Shifted delete char key
    KEY_SDC = nil #value is unknown, used for indexing.
    # Shifted delete line key
    KEY_SDL = nil #value is unknown, used for indexing.
    # Select key
    KEY_SELECT = nil #value is unknown, used for indexing.
    # Shifted end key
    KEY_SEND = nil #value is unknown, used for indexing.
    # Shifted clear line key
    KEY_SEOL = nil #value is unknown, used for indexing.
    # Shifted exit key
    KEY_SEXIT = nil #value is unknown, used for indexing.
    # Shifted find key
    KEY_SFIND = nil #value is unknown, used for indexing.
    # Shifted help key
    KEY_SHELP = nil #value is unknown, used for indexing.
    # Shifted home key
    KEY_SHOME = nil #value is unknown, used for indexing.
    # Shifted input key
    KEY_SIC = nil #value is unknown, used for indexing.
    # Shifted left arrow key
    KEY_SLEFT = nil #value is unknown, used for indexing.
    # Shifted message key
    KEY_SMESSAGE = nil #value is unknown, used for indexing.
    # Shifted move key
    KEY_SMOVE = nil #value is unknown, used for indexing.
    # Shifted next key
    KEY_SNEXT = nil #value is unknown, used for indexing.
    # Shifted options key
    KEY_SOPTIONS = nil #value is unknown, used for indexing.
    # Shifted previous key
    KEY_SPREVIOUS = nil #value is unknown, used for indexing.
    # Shifted print key
    KEY_SPRINT = nil #value is unknown, used for indexing.
    # Shifted redo key
    KEY_SREDO = nil #value is unknown, used for indexing.
    # Shifted replace key
    KEY_SREPLACE = nil #value is unknown, used for indexing.
    # Shifted right arrow key
    KEY_SRIGHT = nil #value is unknown, used for indexing.
    # Shifted resume key
    KEY_SRSUME = nil #value is unknown, used for indexing.
    # Shifted save key
    KEY_SSAVE = nil #value is unknown, used for indexing.
    # Shifted suspend key
    KEY_SSUSPEND = nil #value is unknown, used for indexing.
    # Shifted undo key
    KEY_SUNDO = nil #value is unknown, used for indexing.
    # Suspend key
    KEY_SUSPEND = nil #value is unknown, used for indexing.
    # Undo key
    KEY_UNDO = nil #value is unknown, used for indexing.
    # Screen Resized
    KEY_RESIZE = nil #value is unknown, used for indexing.
    # The maximum allowed curses key value.
    KEY_MAX = nil #value is unknown, used for indexing.
    # Curses.ESCDELAY=(value)
    #  
    # Sets the ESCDELAY to Integer +value+
    def self.ESCDELAY=(value)
        #This is a stub, used for indexing
    end
    # Returns the total time, in milliseconds, for which
    # curses will await a character sequence, e.g., a function key
    def self.ESCDELAY()
        #This is a stub, used for indexing
    end
    # Returns the number of positions in a tab.
    def self.TABSIZE()
        #This is a stub, used for indexing
    end
    # TABSIZE=(value)
    #  
    # Sets the TABSIZE to Integer +value+
    def self.TABSIZE=(value)
        #This is a stub, used for indexing
    end
    # tells the curses library to use terminal's default colors.
    # 
    # see also the system manual for default_colors(3)
    def self.use_default_colors()
        #This is a stub, used for indexing
    end
    # Initialize a standard screen
    # 
    # see also Curses.stdscr
    def self.init_screen()
        #This is a stub, used for indexing
    end
    # A program should always call Curses.close_screen before exiting or
    # escaping from curses mode temporarily. This routine
    # restores tty modes, moves the cursor to the lower
    # left-hand corner of the screen and resets the terminal
    # into the proper non-visual mode.
    # 
    # Calling Curses.refresh or Curses.doupdate after a temporary
    # escape causes the program to resume visual mode.
    def self.close_screen()
        #This is a stub, used for indexing
    end
    # Returns +true+ if the window/screen has been closed,
    # without any subsequent Curses.refresh calls,
    # returns +false+ otherwise.
    def self.closed?()
        #This is a stub, used for indexing
    end
    #    The Standard Screen.
    # 
    #    Upon initializing curses, a default window called stdscr,
    #    which is the size of the terminal screen, is created.
    # 
    #    Many curses functions use this window.
    # Initialize a standard screen
    # 
    # see also Curses.stdscr
    def self.stdscr()
        #This is a stub, used for indexing
    end
    # Refreshes the windows and lines.
    def self.refresh()
        #This is a stub, used for indexing
    end
    # Refreshes the windows and lines.
    # 
    # Curses.doupdate allows multiple updates with
    # more efficiency than Curses.refresh alone.
    def self.doupdate()
        #This is a stub, used for indexing
    end
    # Clears every position on the screen completely,
    # so that a subsequent call by Curses.refresh for the screen/window
    # will be repainted from scratch.
    def self.clear()
        #This is a stub, used for indexing
    end
    # Clears to the end of line, that the cursor is currently on.
    def self.clrtoeol()
        #This is a stub, used for indexing
    end
    # Enables characters typed by the user
    # to be echoed by Curses.getch as they are typed.
    def self.echo()
        #This is a stub, used for indexing
    end
    # Disables characters typed by the user
    # to be echoed by Curses.getch as they are typed.
    def self.noecho()
        #This is a stub, used for indexing
    end
    # Put the terminal into raw mode.
    # 
    # Raw mode is similar to Curses.cbreak mode, in that characters typed
    # are immediately passed through to the user program.
    # 
    # The differences are that in raw mode, the interrupt, quit,
    # suspend, and flow control characters are all passed through
    # uninterpreted, instead of generating a signal. The behavior
    # of the BREAK key depends on other bits in the tty driver
    # that are not set by curses.
    def self.raw()
        #This is a stub, used for indexing
    end
    # Put the terminal out of raw mode.
    # 
    # see Curses.raw for more detail
    def self.noraw()
        #This is a stub, used for indexing
    end
    # Put the terminal into cbreak mode.
    # 
    # Normally, the tty driver buffers typed characters until
    # a newline or carriage return is typed. The Curses.cbreak
    # routine disables line buffering and erase/kill
    # character-processing (interrupt and flow control characters
    # are unaffected), making characters typed by the user
    # immediately available to the program.
    # 
    # The Curses.nocbreak routine returns the terminal to normal (cooked) mode.
    # 
    # Initially the terminal may or may not be in cbreak mode,
    # as the mode is inherited; therefore, a program should
    # call Curses.cbreak or Curses.nocbreak explicitly.
    # Most interactive programs using curses set the cbreak mode.
    # Note that Curses.cbreak overrides Curses.raw.
    # 
    # see also Curses.raw
    def self.cbreak()
        #This is a stub, used for indexing
    end
    # Put the terminal into normal mode (out of cbreak mode).
    # 
    # See Curses.cbreak for more detail.
    def self.nocbreak()
        #This is a stub, used for indexing
    end
    # Put the terminal into normal mode (out of cbreak mode).
    # 
    # See Curses.cbreak for more detail.
    def self.crmode()
        #This is a stub, used for indexing
    end
    # Put the terminal into normal mode (out of cbreak mode).
    # 
    # See Curses.cbreak for more detail.
    def self.nocrmode()
        #This is a stub, used for indexing
    end
    # Enable the underlying display device to translate
    # the return key into newline on input, and whether it
    # translates newline into return and line-feed on output
    # (in either case, the call Curses.addch('\n') does the
    # equivalent of return and line feed on the virtual screen).
    # 
    # Initially, these translations do occur. If you disable
    # them using Curses.nonl, curses will be able to make better use
    # of the line-feed capability, resulting in faster cursor
    # motion. Also, curses will then be able to detect the return key.
    def self.nl()
        #This is a stub, used for indexing
    end
    # Disable the underlying display device to translate
    # the return key into newline on input
    # 
    # See Curses.nl for more detail
    def self.nonl()
        #This is a stub, used for indexing
    end
    # Sounds an audible alarm on the terminal, if possible;
    # otherwise it flashes the screen (visual bell).
    # 
    # see also Curses.flash
    def self.beep()
        #This is a stub, used for indexing
    end
    # Flashs the screen, for visual alarm on the terminal, if possible;
    # otherwise it sounds the alert.
    # 
    # see also Curses.beep
    def self.flash()
        #This is a stub, used for indexing
    end
    # ungetch(ch)
    #  
    # Places +ch+ back onto the input queue to be returned by
    # the next call to Curses.getch.
    # 
    # There is just one input queue for all windows.
    def self.ungetch(ch)
        #This is a stub, used for indexing
    end
    # setpos(y, x)
    #  
    # A setter for the position of the cursor,
    # using coordinates +x+ and +y+
    def self.setpos(y, x)
        #This is a stub, used for indexing
    end
    # Enables the best highlighting mode of the terminal.
    # 
    # This is equivalent to Curses:Window.attron(A_STANDOUT)
    # 
    # see also Curses::Window.attrset additional information
    def self.standout()
        #This is a stub, used for indexing
    end
    # Enables the Normal display (no highlight)
    # 
    # This is equivalent to Curses.attron(A_NORMAL)
    # 
    # see also Curses::Window.attrset for additional information.
    def self.standend()
        #This is a stub, used for indexing
    end
    # Returns the character at the current position.
    def self.inch()
        #This is a stub, used for indexing
    end
    # addch(ch)
    #  
    # Add a character +ch+, with attributes, then advance the cursor.
    # 
    # see also the system manual for curs_addch(3)
    def self.addch(ch)
        #This is a stub, used for indexing
    end
    # insch(ch)
    #  
    # Insert a character +ch+, before the cursor.
    def self.insch(ch)
        #This is a stub, used for indexing
    end
    # addstr(str)
    #  
    # add a string of characters +str+, to the window and advance cursor
    def self.addstr(str)
        #This is a stub, used for indexing
    end
    # Read and returns a character from the window.
    # 
    # See Curses::Key to all the function KEY_* available
    def self.getch()
        #This is a stub, used for indexing
    end
    # This is equivalent to a series f Curses::Window.getch calls
    def self.getstr()
        #This is a stub, used for indexing
    end
    # Delete the character under the cursor
    def self.delch()
        #This is a stub, used for indexing
    end
    # Delete the line under the cursor.
    def self.deleteln()
        #This is a stub, used for indexing
    end
    # Inserts a line above the cursor, and the bottom line is lost
    def self.insertln()
        #This is a stub, used for indexing
    end
    # keyname(c)
    #  
    # Returns the character string corresponding to key +c+
    def self.keyname(c)
        #This is a stub, used for indexing
    end
    # Returns the number of lines on the screen
    def self.lines()
        #This is a stub, used for indexing
    end
    # Returns the number of columns on the screen
    def self.cols()
        #This is a stub, used for indexing
    end
    # curs_set(visibility)
    #  
    # Sets Cursor Visibility.
    # 0: invisible
    # 1: visible
    # 2: very visible
    def self.curs_set(visibility)
        #This is a stub, used for indexing
    end
    # scrl(num)
    #  
    # Scrolls the current window Fixnum +num+ lines.
    # The current cursor position is not changed.
    # 
    # For positive +num+, it scrolls up.
    # 
    # For negative +num+, it scrolls down.
    def self.scrl(num)
        #This is a stub, used for indexing
    end
    # setscrreg(top, bottom)
    #  
    # Set a software scrolling region in a window.
    # +top+ and +bottom+ are lines numbers of the margin.
    # 
    # If this option and Curses.scrollok are enabled, an attempt to move off
    # the bottom margin line causes all lines in the scrolling region
    # to scroll one line in the direction of the first line.
    # Only the text of the window is scrolled.
    def self.setscrreg(top, bottom)
        #This is a stub, used for indexing
    end
    # attroff(attrs)
    #  
    # Turns on the named attributes +attrs+ without affecting any others.
    # 
    # See also Curses::Window.attrset for additional information.
    def self.attroff(attrs)
        #This is a stub, used for indexing
    end
    # attron(attrs)
    #  
    # Turns off the named attributes +attrs+
    # without turning any other attributes on or off.
    # 
    # See also Curses::Window.attrset for additional information.
    def self.attron(attrs)
        #This is a stub, used for indexing
    end
    # attrset(attrs)
    #  
    # Sets the current attributes of the given window to +attrs+.
    # 
    # see also Curses::Window.attrset
    def self.attrset(attrs)
        #This is a stub, used for indexing
    end
    # bkgdset(ch)
    #  
    # Manipulate the background of the named window
    # with character Integer +ch+
    # 
    # The background becomes a property of the character
    # and moves with the character through any scrolling
    # and insert/delete line/character operations.
    # 
    # see also the system manual for curs_bkgd(3)
    def self.bkgdset(ch)
        #This is a stub, used for indexing
    end
    # bkgd(ch)
    #  
    # Window background manipulation routines.
    # 
    # Set the background property of the current
    # and then apply the character Integer +ch+ setting
    # to every character position in that window.
    # 
    # see also the system manual for curs_bkgd(3)
    def self.bkgd(ch)
        #This is a stub, used for indexing
    end
    # resizeterm(lines, cols)
    #  
    # Resize the current term to Fixnum +lines+ and Fixnum +cols+
    def self.resizeterm(lines, cols)
        #This is a stub, used for indexing
    end
    # resizeterm(lines, cols)
    #  
    # Resize the current term to Fixnum +lines+ and Fixnum +cols+
    def self.resize(p1, p2)
        #This is a stub, used for indexing
    end
    # Initializes the color attributes, for terminals that support it.
    # 
    # This must be called, in order to use color attributes.
    # It is good practice to call it just after Curses.init_screen
    def self.start_color()
        #This is a stub, used for indexing
    end
    # init_pair(pair, f, b)
    #  
    # Changes the definition of a color-pair.
    # 
    # It takes three arguments: the number of the color-pair to be changed +pair+,
    # the foreground color number +f+, and the background color number +b+.
    # 
    # If the color-pair was previously initialized, the screen is
    # refreshed and all occurrences of that color-pair are changed
    # to the new definition.
    def self.init_pair(pair, f, b)
        #This is a stub, used for indexing
    end
    # init_color(color, r, g, b)
    #  
    # Changes the definition of a color. It takes four arguments:
    # * the number of the color to be changed, +color+
    # * the amount of red, +r+
    # * the amount of green, +g+
    # * the amount of blue, +b+
    # 
    # The value of the first argument must be between 0 and  COLORS.
    # (See the section Colors for the default color index.)  Each
    # of the last three arguments must be a value between 0 and 1000.
    # When Curses.init_color is used, all occurrences of that color
    # on the screen immediately change to the new definition.
    def self.init_color(color, r, g, b)
        #This is a stub, used for indexing
    end
    # Returns +true+ or +false+ depending on whether the terminal has color capbilities.
    def self.has_colors?()
        #This is a stub, used for indexing
    end
    # Returns +true+ or +false+ depending on whether the terminal can change color attributes
    def self.can_change_color?()
        #This is a stub, used for indexing
    end
    # returns COLORS
    def self.colors()
        #This is a stub, used for indexing
    end
    # color_content(color)
    #  
    # Returns an 3 item Array of the RGB values in +color+
    def self.color_content(color)
        #This is a stub, used for indexing
    end
    # Returns the COLOR_PAIRS available, if the curses library supports it.
    def self.color_pairs()
        #This is a stub, used for indexing
    end
    # pair_content(pair)
    #  
    # Returns a 2 item Array, with the foreground and
    # background color, in +pair+
    def self.pair_content(pair)
        #This is a stub, used for indexing
    end
    # color_pair(attrs)
    #  
    # Sets the color pair attributes to +attrs+.
    # 
    # This should be equivalent to Curses.attrset(COLOR_PAIR(+attrs+))
    # 
    # TODO: validate that equivalency
    def self.color_pair(attrs)
        #This is a stub, used for indexing
    end
    # pair_number(attrs)
    #  
    # Returns the Fixnum color pair number of attributes +attrs+.
    def self.pair_number(attrs)
        #This is a stub, used for indexing
    end
    # Returns coordinates of the mouse.
    # 
    # This will read and pop the mouse event data off the queue
    # 
    # See the BUTTON*, ALL_MOUSE_EVENTS and REPORT_MOUSE_POSITION constants, to examine the mask of the event
    def self.getmouse()
        #This is a stub, used for indexing
    end
    # It pushes a KEY_MOUSE event onto the input queue, and associates with that
    # event the given state data and screen-relative character-cell coordinates.
    # 
    # The Curses.ungetmouse function behaves analogously to Curses.ungetch.
    def self.ungetmouse(p1)
        #This is a stub, used for indexing
    end
    # mouseinterval(interval)
    #  
    # The Curses.mouseinterval function sets the maximum time
    # (in thousands of a second) that can elapse between press
    # and release events for them to be recognized as a click.
    # 
    # Use Curses.mouseinterval(0) to disable click resolution.
    # This function returns the previous interval value.
    # 
    # Use Curses.mouseinterval(-1) to obtain the interval without
    # altering it.
    # 
    # The default is one sixth of a second.
    def self.mouseinterval(interval)
        #This is a stub, used for indexing
    end
    # mousemask(mask)
    #  
    # Returns the +mask+ of the reportable events
    def self.mousemask(mask)
        #This is a stub, used for indexing
    end
    # timeout=(delay)
    #  
    # Sets block and non-blocking reads for the window.
    # - If delay is negative, blocking read is used (i.e., waits indefinitely for input).
    # - If delay is zero, then non-blocking read is used (i.e., read returns ERR if no input is waiting).
    # - If delay is positive, then read blocks for delay milliseconds, and returns ERR if there is still no input.
    def self.timeout=(delay)
        #This is a stub, used for indexing
    end
    # Save the current terminal modes as the "program"
    # state for use by the Curses.reset_prog_mode
    # 
    # This is done automatically by Curses.init_screen
    def self.def_prog_mode()
        #This is a stub, used for indexing
    end
    # Reset the current terminal modes to the saved state
    # by the Curses.def_prog_mode
    # 
    # This is done automatically by Curses.close_screen
    def self.reset_prog_mode()
        #This is a stub, used for indexing
    end
    # a container for the KEY_* values.
    # 
    # See also system manual for getch(3)
    module Key
        # Mouse event read
        MOUSE = nil #value is unknown, used for indexing.
        # The minimum allowed curses key value.
        MIN = nil #value is unknown, used for indexing.
        # Break key
        BREAK = nil #value is unknown, used for indexing.
        # the down arrow key
        DOWN = nil #value is unknown, used for indexing.
        # the up arrow key
        UP = nil #value is unknown, used for indexing.
        # the left arrow key
        LEFT = nil #value is unknown, used for indexing.
        # the right arrow key
        RIGHT = nil #value is unknown, used for indexing.
        # Home key (upward+left arrow)
        HOME = nil #value is unknown, used for indexing.
        # Backspace
        BACKSPACE = nil #value is unknown, used for indexing.
        # Delete line
        DL = nil #value is unknown, used for indexing.
        # Insert line
        IL = nil #value is unknown, used for indexing.
        # Delete character
        DC = nil #value is unknown, used for indexing.
        # Insert char or enter insert mode
        IC = nil #value is unknown, used for indexing.
        # Enter insert char mode
        EIC = nil #value is unknown, used for indexing.
        # Clear Screen
        CLEAR = nil #value is unknown, used for indexing.
        # Clear to end of screen
        EOS = nil #value is unknown, used for indexing.
        # Clear to end of line
        EOL = nil #value is unknown, used for indexing.
        # Scroll 1 line forward
        SF = nil #value is unknown, used for indexing.
        # Scroll 1 line backware (reverse)
        SR = nil #value is unknown, used for indexing.
        # Next page
        NPAGE = nil #value is unknown, used for indexing.
        # Previous page
        PPAGE = nil #value is unknown, used for indexing.
        # Set tab
        STAB = nil #value is unknown, used for indexing.
        # Clear tab
        CTAB = nil #value is unknown, used for indexing.
        # Clear all tabs
        CATAB = nil #value is unknown, used for indexing.
        # Enter or send
        ENTER = nil #value is unknown, used for indexing.
        # Soft (partial) reset
        SRESET = nil #value is unknown, used for indexing.
        # Reset or hard reset
        RESET = nil #value is unknown, used for indexing.
        # Print or copy
        PRINT = nil #value is unknown, used for indexing.
        # Home down or bottom (lower left)
        LL = nil #value is unknown, used for indexing.
        # Upper left of keypad
        A1 = nil #value is unknown, used for indexing.
        # Upper right of keypad
        A3 = nil #value is unknown, used for indexing.
        # Center of keypad
        B2 = nil #value is unknown, used for indexing.
        # Lower left of keypad
        C1 = nil #value is unknown, used for indexing.
        # Lower right of keypad
        C3 = nil #value is unknown, used for indexing.
        # Back tab key
        BTAB = nil #value is unknown, used for indexing.
        # Beginning key
        BEG = nil #value is unknown, used for indexing.
        # Cancel key
        CANCEL = nil #value is unknown, used for indexing.
        # Close key
        CLOSE = nil #value is unknown, used for indexing.
        # Cmd (command) key
        COMMAND = nil #value is unknown, used for indexing.
        # Copy key
        COPY = nil #value is unknown, used for indexing.
        # Create key
        CREATE = nil #value is unknown, used for indexing.
        # End key
        END = nil #value is unknown, used for indexing.
        # Exit key
        EXIT = nil #value is unknown, used for indexing.
        # Find key
        FIND = nil #value is unknown, used for indexing.
        # Help key
        HELP = nil #value is unknown, used for indexing.
        # Mark key
        MARK = nil #value is unknown, used for indexing.
        # Message key
        MESSAGE = nil #value is unknown, used for indexing.
        # Move key
        MOVE = nil #value is unknown, used for indexing.
        # Next object key
        NEXT = nil #value is unknown, used for indexing.
        # Open key
        OPEN = nil #value is unknown, used for indexing.
        # Options key
        OPTIONS = nil #value is unknown, used for indexing.
        # Previous object key
        PREVIOUS = nil #value is unknown, used for indexing.
        # Redo key
        REDO = nil #value is unknown, used for indexing.
        # Reference key
        REFERENCE = nil #value is unknown, used for indexing.
        # Refresh key
        REFRESH = nil #value is unknown, used for indexing.
        # Replace key
        REPLACE = nil #value is unknown, used for indexing.
        # Restart key
        RESTART = nil #value is unknown, used for indexing.
        # Resume key
        RESUME = nil #value is unknown, used for indexing.
        # Save key
        SAVE = nil #value is unknown, used for indexing.
        # Shifted beginning key
        SBEG = nil #value is unknown, used for indexing.
        # Shifted cancel key
        SCANCEL = nil #value is unknown, used for indexing.
        # Shifted command key
        SCOMMAND = nil #value is unknown, used for indexing.
        # Shifted copy key
        SCOPY = nil #value is unknown, used for indexing.
        # Shifted create key
        SCREATE = nil #value is unknown, used for indexing.
        # Shifted delete char key
        SDC = nil #value is unknown, used for indexing.
        # Shifted delete line key
        SDL = nil #value is unknown, used for indexing.
        # Select key
        SELECT = nil #value is unknown, used for indexing.
        # Shifted end key
        SEND = nil #value is unknown, used for indexing.
        # Shifted clear line key
        SEOL = nil #value is unknown, used for indexing.
        # Shifted exit key
        SEXIT = nil #value is unknown, used for indexing.
        # Shifted find key
        SFIND = nil #value is unknown, used for indexing.
        # Shifted help key
        SHELP = nil #value is unknown, used for indexing.
        # Shifted home key
        SHOME = nil #value is unknown, used for indexing.
        # Shifted input key
        SIC = nil #value is unknown, used for indexing.
        # Shifted left arrow key
        SLEFT = nil #value is unknown, used for indexing.
        # Shifted message key
        SMESSAGE = nil #value is unknown, used for indexing.
        # Shifted move key
        SMOVE = nil #value is unknown, used for indexing.
        # Shifted next key
        SNEXT = nil #value is unknown, used for indexing.
        # Shifted options key
        SOPTIONS = nil #value is unknown, used for indexing.
        # Shifted previous key
        SPREVIOUS = nil #value is unknown, used for indexing.
        # Shifted print key
        SPRINT = nil #value is unknown, used for indexing.
        # Shifted redo key
        SREDO = nil #value is unknown, used for indexing.
        # Shifted replace key
        SREPLACE = nil #value is unknown, used for indexing.
        # Shifted right arrow key
        SRIGHT = nil #value is unknown, used for indexing.
        # Shifted resume key
        SRSUME = nil #value is unknown, used for indexing.
        # Shifted save key
        SSAVE = nil #value is unknown, used for indexing.
        # Shifted suspend key
        SSUSPEND = nil #value is unknown, used for indexing.
        # Shifted undo key
        SUNDO = nil #value is unknown, used for indexing.
        # Suspend key
        SUSPEND = nil #value is unknown, used for indexing.
        # Undo key
        UNDO = nil #value is unknown, used for indexing.
        # Screen Resized
        RESIZE = nil #value is unknown, used for indexing.
        # The maximum allowed curses key value.
        MAX = nil #value is unknown, used for indexing.
    end
    # == Description
    # 
    # Curses::MouseEvent
    # 
    # == Example
    # 
    # * mouse.rb
    #     #!/usr/local/bin/ruby
    #     
    #     require "curses"
    #     include Curses
    #     
    #     def show_message(*msgs)
    #       message = msgs.join
    #       width = message.length + 6
    #       win = Window.new(5, width,
    #                     (lines - 5) / 2, (cols - width) / 2)
    #       win.keypad = true
    #       win.attron(color_pair(COLOR_RED)){
    #         win.box(?|, ?-, ?+)
    #       }
    #       win.setpos(2, 3)
    #       win.addstr(message)
    #       win.refresh
    #       win.getch
    #       win.close
    #     end
    #     
    #     init_screen
    #     start_color
    #     init_pair(COLOR_BLUE,COLOR_BLUE,COLOR_WHITE)
    #     init_pair(COLOR_RED,COLOR_RED,COLOR_WHITE)
    #     crmode
    #     noecho
    #     stdscr.keypad(true)
    #     
    #     begin
    #       mousemask(BUTTON1_CLICKED|BUTTON2_CLICKED|BUTTON3_CLICKED|BUTTON4_CLICKED)
    #       setpos((lines - 5) / 2, (cols - 10) / 2)
    #       attron(color_pair(COLOR_BLUE)|A_BOLD){
    #         addstr("click")
    #       }
    #       refresh
    #       while( true )
    #         c = getch
    #         case c
    #         when KEY_MOUSE
    #           m = getmouse
    #           if( m )
    #          show_message("getch = #{c.inspect}, ",
    #                       "mouse event = #{'0x%x' % m.bstate}, ",
    #                       "axis = (#{m.x},#{m.y},#{m.z})")
    #           end
    #           break
    #         end
    #       end
    #       refresh
    #     ensure
    #       close_screen
    #     end
    class MouseEvent
    end
    # == Description
    # 
    # The means by which to create and manage frames or windows.
    # While there may be more than one window at a time, only one window
    # will receive input.
    # 
    # == Usage
    # 
    #   require 'curses'
    # 
    #   Curses.init_screen()
    # 
    #   my_str = "LOOK! PONIES!"
    #   win = Curses::Window.new( 8, (my_str.length + 10),
    #                             (Curses.lines - 8) / 2,
    #                             (Curses.cols - (my_str.length + 10)) / 2 )
    #   win.box("|", "-")
    #   win.setpos(2,3)
    #   win.addstr(my_str)
    #   # or even
    #   win << "\nORLY"
    #   win << "\nYES!! " + my_str
    #   win.refresh
    #   win.getch
    #   win.close
    class Window < Data
        # new(height, width, top, left)
        #  
        # Contruct a new Curses::Window with constraints of
        # +height+ lines, +width+ columns, begin at +top+ line, and begin +left+ most column.
        # 
        # A new window using full screen is called as
        #      Curses::Window.new(0,0,0,0)
        def self.new(height, width, top, left)
            #This is a stub, used for indexing
        end
        # subwin(height, width, top, left)
        #  
        # Contruct a new subwindow with constraints of
        # +height+ lines, +width+ columns, begin at +top+ line, and begin +left+ most column.
        def subwin(height, width, top, left)
            #This is a stub, used for indexing
        end
        # Deletes the window, and frees the memory
        def close()
            #This is a stub, used for indexing
        end
        # Clear the window.
        def clear()
            #This is a stub, used for indexing
        end
        # Clear the window to the end of line, that the cursor is currently on.
        def clrtoeol()
            #This is a stub, used for indexing
        end
        # Refreshes the windows and lines.
        def refresh()
            #This is a stub, used for indexing
        end
        # Refreshes the windows and lines.
        # 
        # Curses::Window.noutrefresh allows multiple updates with
        # more efficiency than Curses::Window.refresh alone.
        def noutrefresh()
            #This is a stub, used for indexing
        end
        # box(vert, hor)
        #  
        # set the characters to frame the window in.
        # The vertical +vert+ and horizontal +hor+ character.
        # 
        #      win = Curses::Window.new(5,5,5,5)
        #      win.box(?|, ?-)
        def box(vert, hor)
            #This is a stub, used for indexing
        end
        # move(y,x)
        #  
        # Moves the window so that the upper left-hand corner is at position (+y+, +x+)
        def move(y,x)
            #This is a stub, used for indexing
        end
        # setpos(y, x)
        #  
        # A setter for the position of the cursor
        # in the current window,
        # using coordinates +x+ and +y+
        def setpos(y, x)
            #This is a stub, used for indexing
        end
        # color_set(col)
        #  
        # Sets the current color of the given window to the
        # foreground/background combination described by the Fixnum +col+.
        def color_set(col)
            #This is a stub, used for indexing
        end
        # A getter for the current line (Y coord) of the window
        def cury()
            #This is a stub, used for indexing
        end
        # A getter for the current column (X coord) of the window
        def curx()
            #This is a stub, used for indexing
        end
        # A getter for the maximum lines for the window
        def maxy()
            #This is a stub, used for indexing
        end
        # A getter for the maximum columns for the window
        def maxx()
            #This is a stub, used for indexing
        end
        # A getter for the beginning line (Y coord) of the window
        def begy()
            #This is a stub, used for indexing
        end
        # A getter for the beginning column (X coord) of the window
        def begx()
            #This is a stub, used for indexing
        end
        # Enables the best highlighting mode of the terminal.
        # 
        # This is equivalent to Curses::Window.attron(A_STANDOUT)
        # 
        # see also Curses::Window.attrset
        def standout()
            #This is a stub, used for indexing
        end
        # Enables the Normal display (no highlight)
        # 
        # This is equivalent to Curses::Window.attron(A_NORMAL)
        # 
        # see also Curses::Window.attrset
        def standend()
            #This is a stub, used for indexing
        end
        # Returns the character at the current position of the window.
        def inch()
            #This is a stub, used for indexing
        end
        # addch(ch)
        #  
        # Add a character +ch+, with attributes, to the window, then advance the cursor.
        # 
        # see also the system manual for curs_addch(3)
        def addch(ch)
            #This is a stub, used for indexing
        end
        # insch(ch)
        #  
        # Insert a character +ch+, before the cursor, in the current window
        def insch(ch)
            #This is a stub, used for indexing
        end
        # addstr(str)
        #  
        # add a string of characters +str+, to the window and advance cursor
        def addstr(str)
            #This is a stub, used for indexing
        end
        # <<(str)
        #  
        # <<
        # 
        # Add String +str+ to the current string.
        # 
        # See also Curses::Window.addstr
        def <<(p1)
            #This is a stub, used for indexing
        end
        # Read and returns a character from the window.
        # 
        # See Curses::Key to all the function KEY_* available
        def getch()
            #This is a stub, used for indexing
        end
        # This is equivalent to a series f Curses::Window.getch calls
        def getstr()
            #This is a stub, used for indexing
        end
        # Delete the character under the cursor
        def delch()
            #This is a stub, used for indexing
        end
        # Delete the line under the cursor.
        def deleteln()
            #This is a stub, used for indexing
        end
        # Inserts a line above the cursor, and the bottom line is lost
        def insertln()
            #This is a stub, used for indexing
        end
        # Scrolls the current window up one line.
        def scroll()
            #This is a stub, used for indexing
        end
        # scrollok(bool)
        #  
        # Controls what happens when the cursor of a window
        # is moved off the edge of the window or scrolling region,
        # either as a result of a newline action on the bottom line,
        # or typing the last character of the last line.
        # 
        # If disabled, (+bool+ is false), the cursor is left on the bottom line.
        # 
        # If enabled, (+bool+ is true), the window is scrolled up one line
        # (Note that to get the physical scrolling effect on the terminal,
        # it is also necessary to call Curses::Window.idlok)
        def scrollok(bool)
            #This is a stub, used for indexing
        end
        # idlok(bool)
        #  
        # If +bool+ is +true+ curses considers using the hardware insert/delete
        # line feature of terminals so equipped.
        # 
        # If +bool+ is +false+, disables use of line insertion and deletion.
        # This option should be enabled only if the application needs insert/delete
        # line, for example, for a screen editor.
        # 
        # It is disabled by default because insert/delete line tends to be visually
        # annoying when used in applications where it is not really needed.
        # If insert/delete line cannot be used, curses redraws the changed portions of all lines.
        def idlok(bool)
            #This is a stub, used for indexing
        end
        # setscrreg(top, bottom)
        #  
        # Set a software scrolling region in a window.
        # +top+ and +bottom+ are lines numbers of the margin.
        # 
        # If this option and Curses::Window.scrollok are enabled, an attempt to move
        # off the bottom margin line causes all lines in the scrolling region to
        # scroll one line in the direction of the first line.  Only the text of the
        # window is scrolled.
        def setscrreg(top, bottom)
            #This is a stub, used for indexing
        end
        # scrl(num)
        #  
        # Scrolls the current window Fixnum +num+ lines.
        # The current cursor position is not changed.
        # 
        # For positive +num+, it scrolls up.
        # 
        # For negative +num+, it scrolls down.
        def scrl(num)
            #This is a stub, used for indexing
        end
        # resize(lines, cols)
        #  
        # Resize the current window to Fixnum +lines+ and Fixnum +cols+
        def resize(lines, cols)
            #This is a stub, used for indexing
        end
        # keypad(bool)
        #  
        # Enables the keypad of the user's terminal.
        # 
        # If enabled (+bool+ is +true+), the user can press a function key
        # (such as an arrow key) and wgetch returns a single value representing
        # the function key, as in KEY_LEFT.  If disabled (+bool+ is +false+),
        # curses does not treat function keys specially and the program has to
        # interpret the escape sequences itself.  If the keypad in the terminal
        # can be turned on (made to transmit) and off (made to work locally),
        # turning on this option causes the terminal keypad to be turned on when
        # Curses::Window.getch is called.
        # 
        # The default value for keypad is false.
        def keypad(bool)
            #This is a stub, used for indexing
        end
        # keypad(bool)
        #  
        # Enables the keypad of the user's terminal.
        # 
        # If enabled (+bool+ is +true+), the user can press a function key
        # (such as an arrow key) and wgetch returns a single value representing
        # the function key, as in KEY_LEFT.  If disabled (+bool+ is +false+),
        # curses does not treat function keys specially and the program has to
        # interpret the escape sequences itself.  If the keypad in the terminal
        # can be turned on (made to transmit) and off (made to work locally),
        # turning on this option causes the terminal keypad to be turned on when
        # Curses::Window.getch is called.
        # 
        # The default value for keypad is false.
        def keypad=(p1)
            #This is a stub, used for indexing
        end
        # attroff(attrs)
        #  
        # Turns on the named attributes +attrs+ without affecting any others.
        # 
        # See also Curses::Window.attrset
        def attroff(attrs)
            #This is a stub, used for indexing
        end
        # attron(attrs)
        #  
        # Turns off the named attributes +attrs+
        # without turning any other attributes on or off.
        # 
        # See also Curses::Window.attrset
        def attron(attrs)
            #This is a stub, used for indexing
        end
        # attrset(attrs)
        #  
        # Sets the current attributes of the given window to +attrs+.
        # 
        # The following video attributes, defined in <curses.h>, can
        # be passed to the routines Curses::Window.attron, Curses::Window.attroff,
        # and Curses::Window.attrset, or OR'd with the characters passed to addch.
        #   A_NORMAL        Normal display (no highlight)
        #   A_STANDOUT      Best highlighting mode of the terminal.
        #   A_UNDERLINE     Underlining
        #   A_REVERSE       Reverse video
        #   A_BLINK         Blinking
        #   A_DIM           Half bright
        #   A_BOLD          Extra bright or bold
        #   A_PROTECT       Protected mode
        #   A_INVIS         Invisible or blank mode
        #   A_ALTCHARSET    Alternate character set
        #   A_CHARTEXT      Bit-mask to extract a character
        #   COLOR_PAIR(n)   Color-pair number n
        # 
        # TODO: provide some examples here.
        # 
        # see also system manual curs_attr(3)
        def attrset(attrs)
            #This is a stub, used for indexing
        end
        # bkgdset(ch)
        #  
        # Manipulate the background of the current window
        # with character Integer +ch+
        # 
        # see also Curses.bkgdset
        def bkgdset(ch)
            #This is a stub, used for indexing
        end
        # bkgd(ch)
        #  
        # Set the background of the current window
        # and apply character Integer +ch+ to every character.
        # 
        # see also Curses.bkgd
        def bkgd(ch)
            #This is a stub, used for indexing
        end
        # Returns an Interer (+ch+) for the character property in the current window.
        def getbkgd()
            #This is a stub, used for indexing
        end
        # nodelay(bool)
        #  
        # Causes Curses::Window.getch to be a non-blocking call.  If no input is ready, getch returns ERR.
        # 
        # If disabled (+bool+ is +false+), Curses::Window.getch waits until a key is pressed.
        def nodelay=(p1)
            #This is a stub, used for indexing
        end
        # timeout=(delay)
        #  
        # Sets block and non-blocking reads for the window.
        # - If delay is negative, blocking read is used (i.e., waits indefinitely for input).
        # - If delay is zero, then non-blocking read is used (i.e., read returns ERR if no input is waiting).
        # - If delay is positive, then read blocks for delay milliseconds, and returns ERR if there is still no input.
        def timeout=(delay)
            #This is a stub, used for indexing
        end
    end
end
