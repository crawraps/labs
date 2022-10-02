require_relative '../part-2/main'

class Stringy_test
  include Stringy
end

RSpec.describe Stringy_test do
  stringy = Stringy_test.new
  it 'manual testing' do
    string, corrections = stringy.correct_array([
                                                  '1j23j 9f239 j 9f23 2f3',
                                                  'fi3932 _f3i2 f23f=f23  j23)f23',
                                                  '1j012 f=1 2-fo 2f23f23f 230jf0129-f',
                                                  'fj230 f2092j3f'
                                                ])
    expect(strings).to eq(0)
  end
end
