require_relative 'main'

class Entry
  include Stringy

  def initialize
    input = []

    print "Enter strings:\n"
    while (i = gets)
      i = i[0..-2]
      i && input.push(i)
    end

    print "Result:\n"
    correct_array(input).collect { |el| print("#{el[0]}. Corrections: #{el[1]}\n") }
  end
end

Entry.new
