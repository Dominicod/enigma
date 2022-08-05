module Shiftable
  def self.shift_key(key)
    shift_key = {A: key[0..1], B: key[1..2], C: key[2..3], D: key[3..4]}
  end

  def self.offset(date, shift_key)
    numeric_form = (date.to_i * date.to_i).to_s[-4..-1]
    shift_key[:A] = (numeric_form[0].to_i + shift_key[:A].to_i)
    shift_key[:B] = (numeric_form[1].to_i + shift_key[:B].to_i)
    shift_key[:C] = (numeric_form[2].to_i + shift_key[:C].to_i)
    shift_key[:D] = (numeric_form[3].to_i + shift_key[:D].to_i)
    shift_key
  end
end