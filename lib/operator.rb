class Operator

  def self.calculate(brackets: nil, amount: 0)
    total = 0
    brackets.each do |b|
      rate = b.run(amount)
      total += rate if rate >= 0
    end
  return total
  end

end
