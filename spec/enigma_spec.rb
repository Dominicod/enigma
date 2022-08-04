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
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq encrypted_hash
    end
  end
end