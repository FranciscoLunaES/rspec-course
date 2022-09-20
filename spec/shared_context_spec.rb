RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'should be empty' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse instance variables across different examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'second example group' do
  include_context 'common'

  it 'can use shared let variables' do
    expect(some_variable).to eq([1, 2, 3])
  end
end


### ACTIVITY
# 1. Subject will be equal to an empty array or object
# 2. When you can modify the values in the subject
#   subject(:luis) do
#     {name: "luis"}
#   end
# 3. You have to put it instead of the name of the class and it helps
# you if you need to change the name of the class in the future
# you will can do it easier
# 4. subject do
#   [1,2]
#  end

# RSpec.describe 'second example group' do
#   subject do
#     [1, 2]
#   end

#   it 'subject array' do
#     expect(subject).to eq([1, 2])
#   end

#   it { is_expected.to eq([1, 2]) }
# end

# I prefer the one liner

# 5. One is to get all the shared examples and the other to get all the
# Context or example group
