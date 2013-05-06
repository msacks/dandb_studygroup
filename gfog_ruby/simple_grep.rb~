print "What file would you like to read? "
file = gets.chomp

print "What term are you searching for? "
search_term = gets.chomp

File.readlines("#{file}").each_with_index do |line, index| 
puts "#{index+1}: #{line}" if line.include? "#{search_term}"
end
