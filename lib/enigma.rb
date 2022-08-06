class Enigma
  def initialize
  end

  def encrypt(message, key = random_key(), date = todays_date())
    encryped_message = Encryptable.encrypt_message(message, key, date)
    returned_hash = 
    {
      message: encryped_message,
      key: key,
      date: date
    }
  end

  def decrypt(ciper, key, date = todays_date())
    decryped_message = Encryptable.decrypt_message(ciper, key, date)
    returned_hash = 
    {
      message: decryped_message,
      key: key,
      date: date
    }
  end

  def random_key
    ((Random.rand(100000).to_i).to_s).rjust(5, '0')
  end

  def todays_date
    (Time.now).strftime("%d%m%y")
  end
end