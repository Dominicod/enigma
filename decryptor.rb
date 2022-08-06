require_relative 'lib/enigma.rb'

enigma = Enigma.new

message = (File.readlines("./docs/#{ARGV[0]}").map(&:chomp)).join
hash = enigma.decrypt(message, ARGV[2], ARGV[3])

File.write("./docs/#{ARGV[1]}", hash[:message])

puts "Created '#{ARGV[1]}' in docs with the key #{hash[:key]} and date #{hash[:date]}"