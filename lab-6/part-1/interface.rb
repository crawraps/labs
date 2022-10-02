require_relative 'main'

class Entry
  include Calculator

  def initialize
    printf "Choose accuracy: e-[value]\n"
    print 'value = '
    val = gets.chomp.to_i

    res = integrate(1, 2, 1.0 / (10.0**val)) { |x| Math.log(x) }
    print "iterations number = #{res['iterations']}\n"
  end
end

Entry.new
