RSpec.describe 'before and after hooks' do
  # It runs before group(overall test)
  before(:context) do
    puts 'Before context'
  end

  # It runs after group(overall test)
  after(:context) do
    puts 'After context'
  end

  # It runs before each example or test
  before(:example) do
    puts 'Before example'
  end

  # It runs after each example or test
  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end
