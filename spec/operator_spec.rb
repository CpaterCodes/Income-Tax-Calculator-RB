require_relative '../lib/operator.rb'

describe 'Operator' do
  before(:all) do
    @step_one = double("bracket")

    @step_two = double("bracket")

    @step_three = double("bracket")

    @steps = [@step_one, @step_two, @step_three]
    @operator = Operator.new(@steps)
  end

  it 'runs operations and calculates total' do
    allow(@step_one).to receive(:run).with(123).and_return(1)
    allow(@step_two).to receive(:run).with(123).and_return(2)
    allow(@step_three).to receive(:run).with(123).and_return(3)
    expect @operator.calculate(123).to eq(6)
  end

end
