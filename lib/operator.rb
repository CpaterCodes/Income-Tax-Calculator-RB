class Operator

  def self.calculate(brackets: nil, amount: 0)
    total = 0
    brackets.each do |bracket|
      total += bracket.run(amount) if bracket.run(amount) >= 0
    end
    total
  end
end
