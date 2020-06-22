class Operator
  def initialize(brackets)
    @brackets = brackets
    @total = 0
  end

  def calculate(amount)
    @brackets.each do |b|
      @total += b.run(amount)
    end
  return @total
  end

end
