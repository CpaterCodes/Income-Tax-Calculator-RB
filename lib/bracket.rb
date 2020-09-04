class Bracket
  def initialize(floor: nil, ceiling: nil, rate: 0)
    @floor = floor
    @ceiling = ceiling
  end

  def run(sum)
    return "run! #{sum}"
  end
end
