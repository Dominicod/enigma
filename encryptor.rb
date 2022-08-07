require_relative 'lib/enigma.rb'
require_relative 'lib/runnerable.rb'

if ARGV[0] && ARGV[1] != nil && File.file?("./docs/#{ARGV[0]}") != false && File.extname("./docs/#{ARGV[0]}") == '.txt' && File.extname("#{ARGV[1]}") == '.txt'
  enigma = Enigma.new

  ARGV[2] = enigma.random_key() if ARGV[2] == nil
  ARGV[3] = enigma.todays_date() if ARGV[3] == nil

  while ARGV[2].length != 5
    puts "\n\e[#{31}m#{}ERR: Please enter a valid key. (Must be 5 digits)\e[0m\n\n"
    ARGV[2] = STDIN.gets.chomp
  end

  Runnerable.CLI_output(enigma)
else
  Runnerable.CLI_output_err
end