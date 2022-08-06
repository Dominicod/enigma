require_relative 'lib/enigma.rb'

enigma = Enigma.new

message = (File.readlines("./docs/#{ARGV[0]}").map(&:chomp)).join
hash = enigma.encrypt(message)

File.write("./docs/#{ARGV[1]}", hash[:message])

puts "Created '#{"#{ARGV[1]}"}' in docs with the key #{hash[:key]} and date #{hash[:date]}"