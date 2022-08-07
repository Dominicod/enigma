require_relative 'lib/enigma.rb'

enigma = Enigma.new

ARGV[3] = enigma.todays_date() if ARGV[3] == nil

usr_input = ARGV[2]
while usr_input == nil && usr_input.length < 5
  puts "Please enter a valid key."
  usr_input = gets.chomp
end

message = (File.readlines("./docs/#{ARGV[0]}").map(&:chomp)).join
hash = enigma.decrypt(message, ARGV[2], ARGV[3])

File.write("./docs/#{ARGV[1]}", hash[:message])

puts "Created '#{ARGV[1]}' in docs with the key #{hash[:key]} and date #{hash[:date]}"