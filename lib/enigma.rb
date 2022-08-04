class Enigma
  def initialize
  end

  def encrypt(message, key, date = (Date.today).strftime("%d%m%y"))
    returned_hash = 
    {
      message: message,
      key: key,
      date: date
    }
  end

  def decrypt(ciper, key, date = (Time.now).strftime("%d%m%y"))
    returned_hash = 
    {
      message: ciper,
      key: key,
      date: date
    }
  end
end