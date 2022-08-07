module Runnerable
  def self.CLI_output(enigma, crypt)
    while ARGV[3].length != 6
      puts "\n\e[31mERR: Please enter a valid date. (Must be 6 digits in: DDMMYY)\e[0m\n\n"
      ARGV[3] = STDIN.gets.chomp
    end

    message = File.readlines("./docs/#{ARGV[0]}").map(&:chomp).join

    hash = crypt == 'decrypt' ? enigma.decrypt(message, ARGV[2], ARGV[3]) : enigma.encrypt(message, ARGV[2], ARGV[3])
    
    File.write("./docs/#{ARGV[1]}", hash[:message])

    puts "\nCreated \e[32m'#{"#{ARGV[1]}"}'\e[0m in docs with the key \e[33m#{hash[:key]}\e[0m and date \e[33m#{hash[:date]}\e[0m\n\n"
  end

  def self.CLI_output_err
    puts "\n\e[31mERR: Please enter a valid file-name to read and a valid file-name to write to.\e[0m"
    puts "\e[33mHint: Check read-file spelling. (Both files must be a valid file with .txt file extension)\e[0m\n\n"
  end
end
