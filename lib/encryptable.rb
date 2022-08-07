require_relative 'shiftable'

module Encryptable
  def self.encrypt_message(message, key, date)
    final_shift = Shiftable.shift(date, key)
    shift_values = final_shift.values
    crypt(message, shift_values)
  end

  def self.decrypt_message(message, key, date)
    final_shift = Shiftable.shift(date, key)
    shift_values = (final_shift.transform_values {|v| -v}).values
    crypt(message, shift_values)
  end

  def self::shovel(letter, shift_values, cryption, counter)
    if letter.ord >= 97 && letter.ord <= 122
      character_set = ("a".."z").to_a << " "
      set_index = character_set.find_index(letter)
      cryption << character_set.rotate(shift_values[counter] + set_index).first
    else
      cryption << letter
    end
  end

  def self::crypt(message, shift_values)
    cryption = Array.new
    counter = 0
    message.downcase.each_char.with_index do |letter, index|
      counter = 0 if counter == 4
      shovel(letter, shift_values, cryption, counter)
      counter += 1
    end
    cryption.join
  end
end
