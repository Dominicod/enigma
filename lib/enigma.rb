class Enigma
  def initialize
  end

  def encrypt(message, key = random_key(), date = todays_date())
    # TODO: Implement encrypt
  end

  def decrypt(ciper, key, date = todays_date())
    # TODO: Implement decrypt
  end

  def random_key
    (0..4).map {rand(9)}.join
  end

  def todays_date
    (Time.now).strftime("%d%m%y")
  end
end