require_relative 'main'

class Entry
  include Functions

  def initialize
    print 'Enter function argument: '
    a = gets.chomp
    print 'Result: '
    print calculate(a.to_f)
  end
end

Entry.new
