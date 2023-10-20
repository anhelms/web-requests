require "http"

system "clear"
puts "Welcome to my Weather app!"
puts "What city are you in?"
city = gets.chomp



response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=#{ENV['OPEN_WEATHER_API_KEY']}")




weather_data = response.parse

temperature = weather_data["main"]["temp"]
description = weather_data["weather"][0]["description"]

puts "Today in #{city}, it is #{temperature} degrees outside with #{description}"


