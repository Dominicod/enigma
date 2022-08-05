require_relative 'shiftable'
module Encryptable
  include Shiftable

  def self.encrypt_message(encrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
    message = encrypt_message.split('')
    count = 0
    encrypted_message = message.map do |letter|
      letter.ord >= 97 && letter.ord <= 122 ? shift_letter(letter, count) : encrypted_message << letter
    end
    encrypted_message.join
  end

  def self.decrypt_message(decrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
  end

  def self::shift_letter(letter, count)
    counter += 1
    (letter.ord + final_shift[counter]).chr
  end
end
