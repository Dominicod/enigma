module Shiftable
  def self.shift_key(key)
    shift_key = {A: key[0..1], B: key[1..2], C: key[2..3], D: key[3..4]}
  end
end