require_relative 'lib/enigma.rb'

if ARGV[0] || ARGV[1] != nil
  enigma = Enigma.new
  
  ARGV[2] = enigma.random_key() if ARGV[2] == nil
  ARGV[3] = enigma.todays_date() if ARGV[3] == nil

  message = (File.readlines("./docs/#{ARGV[0]}").map(&:chomp)).join
  hash = enigma.encrypt(message, ARGV[2], ARGV[3])

  File.write("./docs/#{ARGV[1]}", hash[:message])

  puts "Created '#{"#{ARGV[1]}"}' in docs with the key #{hash[:key]} and date #{hash[:date]}"
else
  puts "ERR: Please enter a file-name to read and a file-name to write to."
end