require 'spec_helper'
require_relative '../lib/shiftable'

RSpec.describe Shiftable do
  let(:key) {key = "02715"}
  let(:date) {date = "040895"}
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

  describe '#offset' do
    it 'generates offset' do
      shift_key = Shiftable.shift_key(key)
      returned_hash = 
      {
        A: 3,
        B: 27,
        C: 73,
        D: 20
      }

      expect(Shiftable.offset(date, shift_key)).to eq returned_hash
    end
  end
end