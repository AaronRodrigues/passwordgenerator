require 'passwordgenerator'

describe Password do
  subject(:password) { described_class.new }
  
  it 'should exist' do
    expect(password).to be_truthy
  end

  it 'should generate lowercase letters' do
    expect(password.generate).to match /[a-z]/
  end

  it 'should generate capital letters' do
    expect(password.generate).to match /[A-Z]/
  end

  it 'should generate numbers' do
    expect(password.generate).to match /[0-9]/
  end

  it 'should include !$%&*@^ ' do
    expect(password.generate).to match /[!$%&*@^]/
  end

  it 'should have a default of 15 characters' do
    expect(password.generate.length).to eq 15
  end

  it 'should raise an error if password length is set to 3 and all options are selected' do
    expect { password.generate(length = 3, uppercase = true, lowercase = true, numeric = true, special = true) }.to raise_error 'Cannot generate password : Increase password length'
  end  
  
  it 'should raise an error if password length is set to 0' do
    expect { password.generate(length = 0) }.to raise_error 'Password cannot have 0 characters : Increase password length'
  end
end
