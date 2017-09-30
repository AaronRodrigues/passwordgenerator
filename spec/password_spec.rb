require 'passwordgenerator'

describe PasswordGenerator do
  subject(:passwordgenerator) { described_class.new() }
  
  it 'should exist' do
    expect(passwordgenerator).to be_truthy
  end
end