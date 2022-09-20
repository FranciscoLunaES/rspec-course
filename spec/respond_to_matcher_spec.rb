class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awesome, I just purchase #{number} more hot chocolate beverages!"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirm an object can repsond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:drink, :discard, :purchase) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
