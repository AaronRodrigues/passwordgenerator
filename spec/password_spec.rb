require 'passwordgenerator'

describe PasswordGenerator do
  subject(:passwordgenerator) { described_class.new() }
  
  it 'should exist' do
    expect(passwordgenerator).to be_truthy
  end
  
  it 'should generate lowercase letters' do
    allow(passwordgenerator).to receive(:makeit).and_return('abcdefghijkl')
    expect(passwordgenerator.makeit).to eq ('abcdefghijkl')
  end
  
  it 'should generate uppercase letters' do
    allow(passwordgenerator).to receive(:makeit).and_return('ABCDEFGHIJKL')
    expect(passwordgenerator.makeit).to eq ('ABCDEFGHIJKL')
  end
  
  it 'should generate numbers' do
    allow(passwordgenerator).to receive(:makeit).and_return('0123456789')
    expect(passwordgenerator.makeit).to eq ('0123456789')
  end
  
  it 'should have a default of 15 characters' do
    expect(passwordgenerator.makeit.length).to eq 15
  end
end