class Operator
  def initialize(brackets)
    @brackets = brackets
    @total = 0
  end

  def calculate(amount)
    @brackets.each do |b|
      rate = b.run(amount)
      @total += rate if rate >= 0
    end
  return @total
  end

end
