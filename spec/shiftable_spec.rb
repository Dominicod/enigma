require 'spec_helper'
require_relative '../lib/shiftable'

RSpec.describe Shiftable do
  let(:key) {key = ("02715")}
  describe '#key' do
    it 'generates key' do
      returned_hash = 
      {
        A: "02",
        B: "27",
        C: "71",
        D: "15"
      }

      expect(Shiftable.shift_key(key)).to eq returned_hash
    end
  end
end