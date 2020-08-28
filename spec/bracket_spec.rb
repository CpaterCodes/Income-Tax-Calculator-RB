require_relative '../lib/bracket.rb'

describe 'Bracket' do
  before(:all) do
    @basic_rate = Bracket.new(floor: 12500, ceiling: 50000)
    @higher_rate = Bracket.new(floor: 50000, ceiling: 150000)
  end

  it "Should return the rate of tax on a given bracket" do
    expect(@basic_rate.run(15000)).to eq(500)
    expect(@higher_rate.run(200000)).to eq(40000)
  end
end
