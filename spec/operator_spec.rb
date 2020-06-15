require_relative '../lib/operator.rb'

describe 'Operator' do
  before(:all) do
    step_one = double("bracket")
    step_two = double("bracket")
    step_three = double("bracket")
    steps = [step_one, step_two, step_three]
    operator = Operator.new(steps)
  end

  it 'runs operations' do

  end

  it 'only runs operations with certain conditions' do

  end
end
