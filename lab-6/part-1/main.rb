module Calculator
  def integrate(a, b, acc, exact_value = 0.3862943611199)
    sum = exact_value + acc + 1
    n = 10

    while (exact_value - sum).abs > acc
      sum = 0.0
      s = a
      f = b

      dx = (f - s) / n.to_f
      n.times do
        s += dx
        sum += (yield s) * dx
      end

      n += 1
    end

    { 'iterations' => n, 'result' => sum }
  end
end
