require 'spec_helper'
require_relative '../lib/enigma'
let(:enigma) {enigma = Enigma.new}

RSpec.describe Enigma do
  describe '.enigma_intialize' do
    it 'instantiates' do
      expect(enigma).to be_instance_of described_class
    end

    it 'returns instance variables' do
      # TODO: returns instance variables
    end
  end
end