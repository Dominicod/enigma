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
    # decryped_message = Encryptable.decrypt_message(ciper, key, date)
    # returned_hash = 
    # {
    #   message: decryped_message,
    #   key: key,
    #   date: date
    # }
  end

  def random_key
    (0..4).map {rand(9)}.join
  end

  def todays_date
    (Time.now).strftime("%d%m%y")
  end
end