require_relative '../part-1/main'

class Functions_test
  include Functions
end

RSpec.describe Functions_test do
  funcs = Functions_test.new
  it 'pi' do
    calc = funcs.calculate(Math::PI)
    expect(calc).to eq(0)
  end

  it 'zero' do
    calc = funcs.calculate(0)
    expect(calc).to eq(0)
  end
end
