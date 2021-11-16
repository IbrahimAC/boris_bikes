require 'dice'

describe 'dice'
  it 'allows the dice to roll' do
    expect(dice).to respond_to(:roll)
    end
  end

  it 'returns a number between and including 1 and 6' do
    dice = Dice.new
    expect  (dice.roll).to be_between(1,6)
  end
end