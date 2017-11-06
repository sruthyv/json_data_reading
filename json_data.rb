require "json"
file_content = File.open("log_on_date.txt").read.split("}\n").join("},")+"}"
json_data = file_content.scan(/\{((\s*?.*?)*?)\}/)
File.open("data.json","w") do |f|
    f.puts json_data
end
puts "file written as json"