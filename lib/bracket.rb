class Bracket
  def initialize(floor: nil, ceiling: nil, rate: 0)
    @floor = floor
    @ceiling = ceiling
    @rate = rate
  end

  def run(sum)
    sum = @ceiling if @ceiling != nil && sum > @ceiling
    sum -= @floor if @floor != nil
    return sum * @rate
  end

end
