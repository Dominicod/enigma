require_relative 'shiftable'
module Encryptable
  include Shiftable

  def self.encrypt_message(encrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
    shift_letters = final_shift.keys
    message = encrypt_message.downcase
    character_set = ("a".."z").to_a << " "
    encrypted_message = shift_letter(final_shift, message, shift_letters, character_set)
  end

  def self.decrypt_message(decrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
  end

  def self::shift_letter(final_shift, message, shift_letters, character_set)
    encryption = Array.new
    counter = 0
    message.each_char.with_index do |letter, index|
      counter = 0 if counter == 4
      if letter.ord >= 97 && letter.ord <= 122
        set_index = character_set.find_index(letter)
        encryption << character_set.rotate(final_shift[shift_letters[counter]] + set_index).first
        counter += 1
      else
        encryption << letter
        counter += 1
      end
    end
      encryption.join
  end
end
