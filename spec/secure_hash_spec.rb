require 'spec_helper'

describe Paymob do
  it 'Calculates proper secure hash' do
    data = {
      a: '1',
      b: '2',
      c: ''
    }
    expected_hash = '487e6fa0c68a4218053a8105bbd2de41633285cbae8847976d51a09fce320cf2'
    expect(Paymob.calc_secure_hash('test', data)).to eql expected_hash
  end
end

