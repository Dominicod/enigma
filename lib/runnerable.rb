module Runnerable
  def self.CLI_output(enigma)
    while ARGV[3].length != 6
      puts "\n\e[#{31}m#{}ERR: Please enter a valid date. (Must be 6 digits in: DDMMYY)\e[0m\n\n"
      ARGV[3] = STDIN.gets.chomp 
    end
  
    message = (File.readlines("./docs/#{ARGV[0]}").map(&:chomp)).join
    hash = enigma.decrypt(message, ARGV[2], ARGV[3])
  
    File.write("./docs/#{ARGV[1]}", hash[:message])
  
    puts "\nCreated \e[#{32}m#{}'#{"#{ARGV[1]}"}'\e[0m in docs with the key \e[#{33}m#{}#{hash[:key]}\e[0m and date \e[#{33}m#{}#{hash[:date]}\e[0m\n\n"
  end
  
  def self.CLI_output_err
    puts "\n\e[#{31}m#{}ERR: Please enter a valid file-name to read and a valid file-name to write to.\e[0m"
    puts "\e[#{33}m#{}Hint: Check read-file spelling. (Both files must be a valid file with .txt file extension)\e[0m\n\n"
  end
end