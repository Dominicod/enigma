require_relative 'lib/enigma'
require_relative 'lib/runnerable'

if ARGV[0] && !ARGV[1].nil? && File.file?("./docs/#{ARGV[0]}") != false && File.extname("./docs/#{ARGV[0]}") == '.txt' && File.extname("#{ARGV[1]}") == '.txt'
  enigma = Enigma.new

  ARGV[3] = enigma.todays_date if ARGV[3].nil?

  while ARGV[2].nil?
    puts "\n\e[31mERR: Please enter a valid key. (Must be 5 digits)\e[0m\n\n"
    ARGV[2] = STDIN.gets.chomp
    unless ARGV[2].nil?
      ARGV[2].length == 5 ? true : ARGV[2] = nil
    end
  end

  Runnerable.CLI_output(enigma, 'decrypt')
else
  Runnerable.CLI_output_err
end
