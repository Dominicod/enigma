require_relative 'shiftable'
module Encryptable
  include Shiftable
  def self.encrypt_message(encrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
    require 'pry'; binding.pry
  end

  def self.decrypt_message(decrypt_message, key, date)
    final_shift = Shiftable.shift(date, key)
    require 'pry'; binding.pry
  end
end
