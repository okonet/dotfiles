# author Roman.Chernyatchik

UNKNOWN_PARAMS_SET = "(...)"

def params_from_call_seq(method)
    _params_from_call_seq(method.name, method.call_seq)
end

def _params_from_call_seq(method_name, call_seq)
    params_signatures = []

    if (call_seq)
        filtered_call_seq = call_seq.strip
        #if call_seq is exceptional case
        exceptional_case_result = Generators::RBGenerator::MANUALLY_PATCHED_CALL_SEQ_MULTIDEF_VARIANTS[filtered_call_seq]
        if (exceptional_case_result)
            return exceptional_case_result
        end

        defs_array = filtered_call_seq.split("\n") #"hack" to be sure that we match regexp till end

        # for each definition from possible multiline def
        defs_array.each do |item|
            #if item is exceptional case
            exceptional_case_result = Generators::RBGenerator::MANUALLY_PATCHED_CALL_SEQ_SINGLEDEF_VARIANTS[method_name+"."+item.strip]
            exceptional_case_result ||= Generators::RBGenerator::MANUALLY_PATCHED_CALL_SEQ_SINGLEDEF_VARIANTS[method_name+"."+item.gsub('->', '=>').strip]
            exceptional_case_result ||= Generators::RBGenerator::MANUALLY_PATCHED_CALL_SEQ_SINGLEDEF_VARIANTS[method_name+"."+item.gsub('=>', '->').strip]

            if (exceptional_case_result)
                return exceptional_case_result
            end
            m1, margs, mtails = _split_call_seq(method_name, item)
            if (margs)
                args = margs.strip
                if (args.empty?)
                    params_signatures << "()"
                elsif args =~ /.*(args)?,\s*\.\.\.\s*\)?/
                    params_signatures <<  (args.gsub(/(args,\s*)?\.\.\.\s*/, "*smth"))
                else
                    params_signatures <<  (args[0, 1] == '(' ? args : " #{args}")
                end
            end
        end
    end

    case params_signatures.length
    when 0
        UNKNOWN_PARAMS_SET
    when 1
        return params_signatures[0]
    else
        SEVERAL_VARIANTS
    end
end

REGEXP_METHOD_PREFIX_NAME_LETTER = /[\w:]/
REGEXP_METHOD_ARGS_OPTIONAL = /(\s*\([^\(\)]*\))?|(\s*\w+)/
REGEXP_METHOD_BLOCK_OPTIONAL = /(\{.*\})?/
REGEXP_METHOD_RETURN_VALUES_OPTIONAL = /\s*(#?[=-]-?>.*)?\n/
#TODO $, ^

def _split_call_seq(method_name, metod_def_seq)
    # Debug output
    # puts "def_seq: [#{metod_def_seq}]\n\n"
    # puts "method_name: [#{method_name}]\n\n"

    operator_name_regexp = _convert_operator_method_to_regexp(method_name)
#if method is binary operator
    if operator_name_regexp
        # Debug output
        #puts "Bin Operator name: #{method_name}"
        #puts "Operator regexp: #{operator_name_regexp}"

        operator_regexp = /(\n#{REGEXP_METHOD_PREFIX_NAME_LETTER}+\s*#{operator_name_regexp}\s*)(\w+)(\s*)(#{REGEXP_METHOD_RETURN_VALUES_OPTIONAL})/
        string_seq = "\n#{metod_def_seq}\n"
        if (!(string_seq =~ operator_regexp) || $2.empty?)
            # HACK for [] and []= : foo[val] => type, foo[val] = obj => type
            if (method_name == "[]" || method_name == "[]=")

                operator_regexp = /(\n#{REGEXP_METHOD_PREFIX_NAME_LETTER}+\s*\[)(.+)(\]\s*=?\s*)(\w*)(#{REGEXP_METHOD_RETURN_VALUES_OPTIONAL})/
                if (!(string_seq =~ operator_regexp) || $2.empty?)
                    return nil, nil, nil
                end
                # p [$1, $2, $3, $4, $5]

                m_def = _strip_if_not_null($1) # definition piece
                if $4 and !$4.empty?
                    m_args = "(#{$2}, #{$4})"
                else
                    m_args = $2
                end
                m_tail = _strip_if_not_null("#{$3}#{$4}#{$5}") # tail piece
                return m_def, m_args, m_tail
            elsif (method_name == "`")
                #hack for "`"
                operator_regexp = /(\n*\s*`)(\w+)(`\s*=?\s*)(#{REGEXP_METHOD_RETURN_VALUES_OPTIONAL})/
                if (!(string_seq =~ operator_regexp) || $2.empty?)
                    return nil, nil, nil
                end
            else
                return nil, nil, nil
            end
        end
        # Debug output
        # p [$1, $2, $3, $4]

        m_def = _strip_if_not_null($1) # definition piece
        m_args = $2
        m_tail = _strip_if_not_null("#{$3}#{$4}") # tail piece
        return m_def, m_args, m_tail
    end

    #if unary operator
    operator_name_regexp = _convert_unary_operator_method_to_regexp(method_name)
    if operator_name_regexp
        # Debug output
        #puts "Un Operator name: #{method_name}"

        operator_regexp_un = /(\n\s*#{operator_name_regexp}\s*)(\w+)(\s*)(#{REGEXP_METHOD_RETURN_VALUES_OPTIONAL})/
        string_seq_un = "\n#{metod_def_seq}\n"

        if (!(string_seq_un =~ operator_regexp_un) || $2.empty?)
            return nil, nil, nil
        end
        # Debug output
        #p [$1, $2, $3, $4]

        m_def = _strip_if_not_null($1) # definition piece
        m_args = $2
        m_tail = _strip_if_not_null("#{$3}#{$4}") # tail piece
        return m_def, m_args, m_tail
    end
#if method is method


    # Patch method name for valid REGEXP form
    last = method_name.length - 1
    if method_name[last, 1] == "?"
        method_name = "#{method_name[0..last-1]}\\?"
    end

    # puts "patched mname: [#{method_name}]\n\n"

    string1 = "\n#{metod_def_seq}\n"
    regexp1 = /(\n(#{REGEXP_METHOD_PREFIX_NAME_LETTER}+[\.#])?#{method_name})#{REGEXP_METHOD_ARGS_OPTIONAL}(\s*)#{REGEXP_METHOD_BLOCK_OPTIONAL}(\s*)(#{REGEXP_METHOD_RETURN_VALUES_OPTIONAL})/

    # p [$1, $2, $3, $4, $5, $6, $7, $8]

    if (!(string1 =~ regexp1))
        if (method_name[(method_name.length - 1), 1] == "=")

            #In cases as : [mymethod=]  foo.mymethod = value => int
            method_name = method_name[0, method_name.length - 1]
            regexp2 = /(\n(#{REGEXP_METHOD_PREFIX_NAME_LETTER}+[\.#])?#{method_name}\s+=)#{REGEXP_METHOD_ARGS_OPTIONAL}(\s*)#{REGEXP_METHOD_BLOCK_OPTIONAL}(\s*)(#{REGEXP_METHOD_RETURN_VALUES_OPTIONAL})/
            if (!(string1 =~ regexp2))
                return nil, nil, nil
            end
        else
            return nil, nil, nil
        end
    end

    # Debug output
    # p [$1, $2, $3, $4, $5, $6, $7, $8]

    m_def = _strip_if_not_null($1) # definition piece
    m_args = $3 ? $3.strip : ($4 ? $4.strip : "")
    m_tail = _strip_if_not_null("#{$5}#{$6}#{$7}#{$8}") # tail piece
    m_args.gsub!(/\[(.*)\]/, '*\1')

    return m_def, m_args, m_tail
end

def  _convert_unary_operator_method_to_regexp(method_name)
    case method_name
    when "!", "~"
        method_name
    when "+@"
        "\\+"
    when "-@"
        "-"
    else
        nil
    end
end

def  _convert_operator_method_to_regexp(method_name)
    case method_name
    when  "[]"
        "\\[\\]"
    when "[]="
        "\\[\\]="
    when "**"
        "\\*\\*"
    when "+"
        "\\+"
    when "-"
        method_name
    when "*"
        "\\*"
    when "/", "%", ">>", "<<", "&"
        method_name
    when  "^"
        "\\^"
    when  "|"
        "\\|"
    when  "<=", "<", ">", ">=", "<=>", "==", "==="
        method_name
    when  "!="
        "\\!="
    when  "=~", "`"
        method_name
    when  "!~"
        "\\!~"
    else
        nil
    end
end

def _method_params_syntax_is_ok(params)
    expr = "def preved_medved#{params}\nend"
    begin
      TrashHolder.class_eval expr
      return true
    rescue SyntaxError => _
      return false
    end
end

def _strip_if_not_null(str)
    if (str)
        str.strip
    else
        nil
    end
end

class TrashHolder;end

