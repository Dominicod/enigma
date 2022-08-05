require 'spec_helper'
require_relative '../lib/encryptable'

RSpec.describe Encryptable do
  let(:encrypt_message) {m = "hello world"}
  let(:decrypt_message) {m = "keder ohulw"}
  let(:key) {key = "02715"}
  let(:date) {date = "040895"}
  describe '#encrypt_message' do
    it 'encrypts the message' do
      expect(Encryptable.encrypt_message(encrypt_message, key, date)).to eq(decrypt_message)
    end
  end

  describe '#decrypt_message' do
    it 'decrypts the message' do
      expect(Encryptable.encrypt_message(decrypt_message, key, date)).to eq(encrypt_message)
    end
  end
end