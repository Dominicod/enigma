require_relative 'lib/enigma.rb'

if ARGV[0] && ARGV[1] != nil
  enigma = Enigma.new

  ARGV[2] = enigma.random_key() if ARGV[2] == nil
  ARGV[3] = enigma.todays_date() if ARGV[3] == nil

  message = (File.readlines("./docs/#{ARGV[0]}").map(&:chomp)).join
  hash = enigma.encrypt(message, ARGV[2], ARGV[3])

  File.write("./docs/#{ARGV[1]}", hash[:message])

  puts "\nCreated \e[#{32}m#{}'#{"#{ARGV[1]}"}'\e[0m in docs with the key \e[#{33}m#{}#{hash[:key]}\e[0m and date \e[#{33}m#{}#{hash[:date]}\e[0m\n\n"
else
  puts "\n\e[#{31}m#{}ERR:\e: Please enter a file-name to read and a file-name to write to.\n\n"
end