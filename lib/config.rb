
# a very basic configuration parser

def load_config(filename)
    config = {}
    config_lines = File.open(filename, 'r').each_line
    config_lines.each_with_index do |line, line_num|
        # comments
        next if line[0] == '#' or line[0] == ';' or line =~ /^\s*$/

        # config line
        if line =~ /^\s*(.+?)\s*[=]\s*(.+)\s*$/
            config[$1] = $2
        elsif
            puts "Error parsing configuration line at line #" + line_num
            exit 1
        end

    end
    return config
end