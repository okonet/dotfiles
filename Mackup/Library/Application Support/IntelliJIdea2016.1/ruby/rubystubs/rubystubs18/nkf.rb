=begin
 This is a machine generated stub using stdlib-doc for <b>module NKF</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# NKF - Ruby extension for Network Kanji Filter 
# 
# == Description
# 
# This is a Ruby Extension version of nkf (Netowrk Kanji Filter).
# It converts the first argument and return converted result. Conversion
# details are specified by flags as the first argument.
# 
# *Nkf* is a yet another kanji code converter among networks, hosts and terminals.
# It converts input kanji code to designated kanji code
# such as ISO-2022-JP, Shift_JIS, EUC-JP, UTF-8 or UTF-16.
# 
# One of the most unique faculty of *nkf* is the guess of the input kanji encodings.
# It currently recognizes ISO-2022-JP, Shift_JIS, EUC-JP, UTF-8 and UTF-16.
# So users needn't set the input kanji code explicitly.
# 
# By default, X0201 kana is converted into X0208 kana.
# For X0201 kana, SO/SI, SSO and ESC-(-I methods are supported.
# For automatic code detection, nkf assumes no X0201 kana in Shift_JIS.
# To accept X0201 in Shift_JIS, use <b>-X</b>, <b>-x</b> or <b>-S</b>.
# 
# == Flags
# 
# === -b -u
# 
# Output is buffered (DEFAULT), Output is unbuffered.
# 
# === -j -s -e -w -w16
# 
# Output code is ISO-2022-JP (7bit JIS), Shift_JIS, EUC-JP,
# UTF-8N, UTF-16BE.
# Without this option and compile option, ISO-2022-JP is assumed.
# 
# === -J -S -E -W -W16
# 
# Input assumption is JIS 7 bit, Shift_JIS, EUC-JP,
# UTF-8, UTF-16LE.
# 
# ==== -J
# 
# Assume  JIS input. It also accepts EUC-JP.
# This is the default. This flag does not exclude Shift_JIS.
# 
# ==== -S
# 
# Assume Shift_JIS and X0201 kana input. It also accepts JIS.
# EUC-JP is recognized as X0201 kana. Without <b>-x</b> flag,
# X0201 kana (halfwidth kana) is converted into X0208.
# 
# ==== -E
# 
# Assume EUC-JP input. It also accepts JIS.
# Same as -J.
# 
# === -t
# 
# No conversion.
# 
# === -i_
# 
# Output sequence to designate JIS-kanji. (DEFAULT B)
# 
# === -o_
# 
# Output sequence to designate ASCII. (DEFAULT B)
# 
# === -r
# 
# {de/en}crypt ROT13/47
# 
# === -h[123] --hiragana --katakana --katakana-hiragana
# 
# [-h1 --hiragana] Katakana to Hiragana conversion.
# 
# [-h2 --katakana] Hiragana to Katakana conversion.
# 
# [-h3 --katakana-hiragana] Katakana to Hiragana and Hiragana to Katakana conversion.
# 
# === -T
# 
# Text mode output (MS-DOS)
# 
# === -l
# 
# ISO8859-1 (Latin-1) support
# 
# === -f[<code>m</code> [- <code>n</code>]]
# 
# Folding on <code>m</code> length with <code>n</code> margin in a line.
# Without this option, fold length is 60 and fold margin is 10.
# 
# === -F
# 
# New line preserving line folding.
# 
# === -Z[0-3]
# 
# Convert X0208 alphabet (Fullwidth Alphabets) to ASCII.
# 
# [-Z -Z0] Convert X0208 alphabet to ASCII.
# 
# [-Z1] Converts X0208 kankaku to single ASCII space.
# 
# [-Z2] Converts X0208 kankaku to double ASCII spaces.
# 
# [-Z3] Replacing Fullwidth >, <, ", & into '&gt;', '&lt;', '&quot;', '&amp;' as in HTML.
# 
# === -X -x
# 
# Assume X0201 kana in MS-Kanji.
# With <b>-X</b> or without this option, X0201 is converted into X0208 Kana.
# With <b>-x</b>, try to preserve X0208 kana and do not convert X0201 kana to X0208.
# In JIS output, ESC-(-I is used. In EUC output, SSO is used.
# 
# === -B[0-2]
# 
# Assume broken JIS-Kanji input, which lost ESC.
# Useful when your site is using old B-News Nihongo patch.
# 
# [-B1] allows any char after ESC-( or ESC-$.
# 
# [-B2] forces ASCII after NL.
# 
# === -I
# 
# Replacing non iso-2022-jp char into a geta character
# (substitute character in Japanese).
# 
# === -d -c
# 
# Delete \r in line feed, Add \r in line feed.
# 
# === -m[BQN0]
# 
# MIME ISO-2022-JP/ISO8859-1 decode. (DEFAULT)
# To see ISO8859-1 (Latin-1) -l is necessary.
# 
# [-mB] Decode MIME base64 encoded stream. Remove header or other part before
# conversion. 
# 
# [-mQ] Decode MIME quoted stream. '_' in quoted stream is converted to space.
# 
# [-mN] Non-strict decoding.
# It allows line break in the middle of the base64 encoding.
# 
# [-m0] No MIME decode.
# 
# === -M
# 
# MIME encode. Header style. All ASCII code and control characters are intact.
# Kanji conversion is performed before encoding, so this cannot be used as a picture encoder.
# 
# [-MB] MIME encode Base64 stream.
# 
# [-MQ] Perfome quoted encoding.
# 
# === -l
# 
# Input and output code is ISO8859-1 (Latin-1) and ISO-2022-JP.
# <b>-s</b>, <b>-e</b> and <b>-x</b> are not compatible with this option.
# 
# === -L[uwm]
# 
# new line mode
# Without this option, nkf doesn't convert line breaks.
# 
# [-Lu] unix (LF)
# 
# [-Lw] windows (CRLF)
# 
# [-Lm] mac (CR)
# 
# === --fj --unix --mac --msdos --windows
# 
# convert for these system
# 
# === --jis --euc --sjis --mime --base64
# 
# convert for named code
# 
# === --jis-input --euc-input --sjis-input --mime-input --base64-input
# 
# assume input system
# 
# === --ic=<code>input codeset</code> --oc=<code>output codeset</code>
# 
# Set the input or output codeset.
# NKF supports following codesets and those codeset name are case insensitive.
# 
# [ISO-2022-JP] a.k.a. RFC1468, 7bit JIS, JUNET
# 
# [EUC-JP (eucJP-nkf)] a.k.a. AT&T JIS, Japanese EUC, UJIS
# 
# [eucJP-ascii] a.k.a. x-eucjp-open-19970715-ascii
# 
# [eucJP-ms] a.k.a. x-eucjp-open-19970715-ms
# 
# [CP51932] Microsoft Version of EUC-JP.
# 
# [Shift_JIS] SJIS, MS-Kanji
# 
# [CP932] a.k.a. Windows-31J
# 
# [UTF-8] same as UTF-8N
# 
# [UTF-8N] UTF-8 without BOM
# 
# [UTF-8-BOM] UTF-8 with BOM
# 
# [UTF-16] same as UTF-16BE
# 
# [UTF-16BE] UTF-16 Big Endian without BOM
# 
# [UTF-16BE-BOM] UTF-16 Big Endian with BOM
# 
# [UTF-16LE] UTF-16 Little Endian without BOM
# 
# [UTF-16LE-BOM] UTF-16 Little Endian with BOM
# 
# [UTF8-MAC] NKDed UTF-8, a.k.a. UTF8-NFD (input only)
# 
# === --fb-{skip, html, xml, perl, java, subchar}
# 
# Specify the way that nkf handles unassigned characters.
# Without this option, --fb-skip is assumed.
# 
# === --prefix= <code>escape character</code> <code>target character</code> ..
# 
# When nkf converts to Shift_JIS,
# nkf adds a specified escape character to specified 2nd byte of Shift_JIS characters.
# 1st byte of argument is the escape character and following bytes are target characters.
# 
# === --disable-cp932ext
# 
# Handle the characters extended in CP932 as unassigned characters.
# 
# === --cap-input
# 
# Decode hex encoded characters.
# 
# === --url-input
# 
# Unescape percent escaped characters.
# 
# === --
# 
# Ignore rest of -option.
module NKF
    # Auto-Detect   
    AUTO = nil #value is unknown, used for indexing.
    # ISO-2022-JP   
    JIS = nil #value is unknown, used for indexing.
    # EUC-JP   
    EUC = nil #value is unknown, used for indexing.
    # Shift_JIS   
    SJIS = nil #value is unknown, used for indexing.
    # BINARY   
    BINARY = nil #value is unknown, used for indexing.
    # No conversion   
    NOCONV = nil #value is unknown, used for indexing.
    # ASCII   
    ASCII = nil #value is unknown, used for indexing.
    # UTF-8   
    UTF8 = nil #value is unknown, used for indexing.
    # UTF-16   
    UTF16 = nil #value is unknown, used for indexing.
    # UTF-32   
    UTF32 = nil #value is unknown, used for indexing.
    # UNKNOWN   
    UNKNOWN = nil #value is unknown, used for indexing.
    # Full version string of nkf   
    VERSION = nil #value is unknown, used for indexing.
    # Version of nkf   
    NKF_VERSION = nil #value is unknown, used for indexing.
    # Release date of nkf   
    NKF_RELEASE_DATE = nil #value is unknown, used for indexing.
    # NKF.nkf(opt, str)   -> string
    #  
    # Convert _str_ and return converted result.
    # Conversion details are specified by _opt_ as String.
    # 
    #    require 'nkf'
    #    output = NKF.nkf("-s", input)
    # 
    # *Note*
    # By default, nkf decodes MIME encoded string.
    # If you want not to decode input, use NKF.nkf with <b>-m0</b> flag.
    def self.nkf(opt, str)
        #This is a stub, used for indexing
    end
    # NKF.guess1(str)  -> integer
    #  
    # Returns guessed encoding of _str_ as integer.
    # 
    # Algorithm described in:
    # Ken Lunde. `Understanding Japanese Information Processing'
    # Sebastopol, CA: O'Reilly & Associates.
    # 
    #     case NKF.guess1(input)
    #     when NKF::JIS
    #       "ISO-2022-JP"
    #     when NKF::SJIS
    #       "Shift_JIS"
    #     when NKF::EUC
    #       "EUC-JP"
    #     when NKF::UNKNOWN
    #       "UNKNOWN(ASCII)"
    #     when NKF::BINARY
    #       "BINARY"
    #     end
    def self.guess1(str)
        #This is a stub, used for indexing
    end
    # NKF.guess2(str)  -> integer
    #  
    # Returns guessed encoding of _str_ as integer by nkf routine.
    # 
    #    case NKF.guess(input)
    #    when NKF::ASCII
    #      "ASCII"
    #    when NKF::JIS
    #      "ISO-2022-JP"
    #    when NKF::SJIS
    #      "Shift_JIS"
    #    when NKF::EUC
    #      "EUC-JP"
    #    when NKF::UTF8
    #      "UTF-8"
    #    when NKF::UTF16
    #      "UTF-16"
    #    when NKF::UNKNOWN
    #      "UNKNOWN"
    #    when NKF::BINARY
    #      "BINARY"
    #    end
    def self.guess2(str)
        #This is a stub, used for indexing
    end
end
