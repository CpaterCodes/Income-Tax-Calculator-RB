class Bracket
  def initialize(floor: nil, ceiling: nil, rate: 0)
    @floor = floor
    @ceiling = ceiling
    @rate = rate
  end

  def run(sum)
    sum = @ceiling if above_ceiling?(sum)
    sum -= @floor if has_floor?
    return sum * @rate
  end

  private
  def has_floor?
    @floor != nil
  end

  def above_ceiling?(quantity)
    @ceiling != nil && quantity > @ceiling
  end
end
