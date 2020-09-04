require_relative '../lib/bracket.rb'

describe 'Bracket' do
  before(:all) do
    @basic_rate = Bracket.new(floor: 12500.0, ceiling: 50000.0, rate:0.2)
    @higher_rate = Bracket.new(floor: 50000.0, ceiling: 150000.0, rate:0.4)
  end

  it "Should return the rate of tax on a given bracket" do
    expect(@basic_rate.run(15000.0)).to eq(500.0)
    expect(@higher_rate.run(200000.0)).to eq(40000.0)
  end
end
