require_relative 'shiftable'

module Encryptable
  def self.encrypt_message(encrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
    encryption = Array.new
    counter = 0
    shift = final_shift.values
    encrypt_message.downcase.each_char.with_index do |letter, index|
      counter = 0 if counter == 4
      shift(letter, shift, encryption, counter)
      counter += 1
    end
      encryption.join
  end

  def self.decrypt_message(decrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
    decryption = Array.new
    counter = 0
    shift = (final_shift.transform_values {|v| -v}).values
    decrypt_message.downcase.each_char.with_index do |letter, index|
      counter = 0 if counter == 4
      shift(letter, shift, decryption, counter)
      counter += 1
    end
      decryption.join
  end

  def self::shift(letter, shift, cryption, counter)
      if letter.ord >= 97 && letter.ord <= 122
        character_set = ("a".."z").to_a << " "
        set_index = character_set.find_index(letter)
        cryption << character_set.rotate(shift[counter] + set_index).first
      else
        cryption << letter
      end
  end
end
