module Shiftable
  def self.shift(date, key)
    final_shift = shift_key(key)
    numeric_form = (date.to_i * date.to_i).to_s[-4..-1]
    final_shift[:A] = (numeric_form[0].to_i + final_shift[:A].to_i)
    final_shift[:B] = (numeric_form[1].to_i + final_shift[:B].to_i)
    final_shift[:C] = (numeric_form[2].to_i + final_shift[:C].to_i)
    final_shift[:D] = (numeric_form[3].to_i + final_shift[:D].to_i)
    final_shift
  end
  
  def self::shift_key(key)
    {A: key[0..1], B: key[1..2], C: key[2..3], D: key[3..4]}
  end
end