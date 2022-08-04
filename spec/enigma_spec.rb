require 'spec_helper'
require 'date'
require_relative '../lib/enigma'

RSpec.describe Enigma do
  let(:enigma) {enigma = Enigma.new}
  
  describe '.enigma_intialize' do
    it 'instantiates' do
      expect(enigma).to be_instance_of described_class
    end
  end

  describe '#encrypt' do
    it 'encrypts' do
      encrypted_hash = 
      {
        message: "keder ohulw",
        key: "02715",
        date: "040895"
      }

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq encrypted_hash
    end

    it 'handles edge case' do
      encrypted_hash = 
      {
        message: "keder ohulw",
        key: "02715",
        date: "040895"
      }

      allow(enigma).to receive(:todays_date).and_return("040895")

      expect(enigma.encrypt("hello world", "02715")).to eq encrypted_hash

      allow(enigma).to receive(:random_key).and_return("02715")
      
      expect(enigma.encrypt("hello world")).to eq encrypted_hash
    end
  end

  describe '#decrypt' do
    it 'decrypts' do
      decrypted_hash = 
      {
        message: "hello world",
        key: "02715",
        date: "040895"
      }

      expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq decrypted_hash
    end
  end
end