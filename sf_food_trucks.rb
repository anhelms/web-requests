require "http"

response = HTTP.get("https://data.sfgov.org/resource/jjew-r69b.json
")
data = response.parse
index = 0
while index < data.length
    puts "#{data[index]['applicant']} will be #{data[index]['location']} on #{data[index]['dayofweekstr']} from #{data[index]['start24']} until #{data[index]['start24']}"
    index += 1
end

# while index < data.length
#     puts "#{data[index]['applicant']} will be #{data[index]['location']} starting at #{data[index]['start24']}"
#     index += 1
# end

# pp data