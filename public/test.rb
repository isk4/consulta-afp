require 'csv'


def helper
    
    file = File.read("UF_2019.csv")
    file = file.gsub(".", "").gsub(",", ".").gsub(";", ",")

    parsed_file = CSV.parse(file)
    
    parsed_file = parsed_file[1..parsed_file.length]
    
    for i in 0..parsed_file.length
        parsed_file[i] = parsed_file[i].drop(1) unless parsed_file[i].nil?
    end

    return parsed_file
end


puts helper