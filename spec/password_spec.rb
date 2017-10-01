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
  
  it 'should raise an error if password length is set to 3 and all options are selected' do
    expect { passwordgenerator.makeit(length = 3,  uppercase = true, lowercase = true, numeric = true, special = true) }.to raise_error 'Cannot generate password : Increase password length'
  end
end