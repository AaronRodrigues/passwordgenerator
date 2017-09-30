require 'passwordgenerator'

describe PasswordGenerator do
  subject(:passwordgenerator) { described_class.new() }
  
  it 'should exist' do
    expect(passwordgenerator).to be_truthy
  end
  
  it 'should generate lowercase letters' do
    expect(passwordgenerator.makeit).to match (/[a-z]/)
  end
  
  it 'should generate capital letters' do
   expect(passwordgenerator.makeit()).to match (/[A-Z]/)
  end
  
  it 'should generate numbers' do
   expect(passwordgenerator.makeit).to match (/[0-9]/)
  end
  
  it 'should include !$%&*@^ ' do
    expect(passwordgenerator.makeit).to match (/[!$%&*@^]/)
  end
  
  it 'should have a default of 15 characters' do
    expect(passwordgenerator.makeit.length).to eq 15
  end
end