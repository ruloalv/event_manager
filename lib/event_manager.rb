require "csv"

puts "EventManager Initialized!"

=begin
rescue Exception => e
	
end
lines = File.readlines "event_attendees.csv"
lines.each do |line|
	arrayline = line.split(",")
	puts arrayline[2]
end
=end

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row| 
	name = row[:first_name]
	zipcode = row[:zipcode].to_s.rjust(5, '00000')

	#zipcode = "00000" + row[:zipcode].to_s
	#zipcode = zipcode.slice(-5,5)

	puts  "#{name} - #{zipcode}"
end