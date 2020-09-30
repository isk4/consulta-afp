# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

file_path = Rails.root.join("public", "UF_2019.csv")
    
file = File.read(file_path.to_s)
file = file.gsub(".", "").gsub(",", ".").gsub(";", ",")

parsed_file = CSV.parse(file)
parsed_file = parsed_file[1..parsed_file.length]

for i in 0..parsed_file.length
    parsed_file[i] = parsed_file[i].drop(1) unless parsed_file[i].nil?
end

for i in 0...parsed_file.length
    for j in 0...parsed_file[i].length
        Uf.create(month: j + 1, day: i + 1, value: parsed_file[i][j]) unless parsed_file[i][j].nil?
    end
end
