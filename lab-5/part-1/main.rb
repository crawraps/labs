module Functions
  def calculate(arg)
    (1 - Math.sqrt(1 + Math.sin(arg).abs)) / (2 + (Math.cos(arg)**2))
  end
end
