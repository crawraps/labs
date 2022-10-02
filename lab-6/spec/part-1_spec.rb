require_relative '../part-1/main'

class Calculator_test
  include Calculator
end

RSpec.describe Calculator_test do
  def integ(val)
    (Calculator_test.new.integrate(1, 2, 1.0 / (10.0**val)) { |x| Math.log(x) })['result']
  end

  it 'error raote' do
    acc = rand(1..10)
    res = integ(acc)
    exact_value = 0.3862943611199

    diff = res - exact_value

    expect(diff).to be < (1.0 / (10**-acc))
  end
end
