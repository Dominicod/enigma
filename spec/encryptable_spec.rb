require 'spec_helper'
require_relative '../lib/encryptable'

RSpec.describe Encryptable do
  let(:encrypt_message) {m = "hello world"}
  let(:decrypt_message) {m = "keder ohulw"}
  let(:key) {key = "02715"}
  let(:date) {date = "040895"}

  describe '#encrypt_message' do
    it 'encrypts the message' do
      expect(Encryptable.encrypt_message(encrypt_message, key, date)).to eq decrypt_message
    end
  end

  describe '#decrypt_message' do
    it 'decrypts the message' do
      expect(Encryptable.decrypt_message(decrypt_message, key, date)).to eq encrypt_message
    end
  end

  describe '#shovel' do
    it 'shovels coverted letter' do
      letter = "h"
      shift_values = [3, 27, 73, 20]
      cryption = Array.new
      counter = 0

      Encryptable.shovel(letter, shift_values, cryption, counter)

      expect(cryption).to eq ["k"]
      
      counter += 1
      letter = "e"

      Encryptable.shovel(letter, shift_values, cryption, counter)

      expect(cryption).to eq ["k", "e"]
    end
  end

  describe '#crypt' do
    it 'returns the crypted message' do
      message = "hello world"
      shift_values = [3, 27, 73, 20]

      expect(Encryptable.crypt(message, shift_values)).to eq decrypt_message
    end
  end
end