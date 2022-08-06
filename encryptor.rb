require_relative 'lib/enigma.rb'

enigma = Enigma.new

read_file = ARGV[0]
write_file = ARGV[1]

message = (File.readlines(read_file).map(&:chomp)).join
hash = enigma.encrypt(message)

File.write(write_file, hash[:message])

puts "Created '#{write_file}' with the key #{hash[:key]} and date #{hash[:date]}"