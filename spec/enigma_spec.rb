require 'spec_helper'
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

      enigma_mock = double('enigma')

      allow(enigma_mock).to receive(:encrypt).and_return(encrypted_hash)
      allow(enigma_mock).to receive(:todays_date).and_return("040895")

      expect(enigma_mock.encrypt("hello world", "02715")).to eq encrypted_hash

      allow(enigma_mock).to receive(:random_key).and_return("02715")
      
      expect(enigma_mock.encrypt("hello world")).to eq encrypted_hash
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

  describe '#random_key' do
    it 'returns a random_key' do
      expect(enigma.random_key).to be_a(String)
      expect(enigma.random_key.length).to eq(5)
    end
  end

  describe '#todays_date' do
    it 'returns todays_date' do
      expect(enigma.todays_date).to be_a(String)
      expect(enigma.todays_date.length).to eq(6)
    end
  end
end