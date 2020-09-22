require "csv"

puts "EventManager Initialized!"

def clean_zipcode(zipcode)
	zc = zipcode.to_s

	if zc.length < 5 
		zc = zc.rjust(5, '0')
	elsif zc.length > 5
		zc = zipcode[0..4]
	else
		zc
	end
end

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row| 
	name = row[:first_name]
	zipcode = clean_zipcode(row[:zipcode])

	puts  "#{name} - #{zipcode}"
end