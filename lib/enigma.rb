class Enigma
  def initialize
  end

  def encrypt(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def decrypt(ciper, key, date)
    @ciper = ciper
    @key = key
    @date = date
  end
end