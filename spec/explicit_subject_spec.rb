RSpec.describe Hash do
  subject(:bob) do
    { a: 2, b: 3 }
  end

  it 'has two key-value pairs' do
    expect(bob.length).to eq(2)
  end

  describe 'nested exmaple ' do
    it 'hast Two-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end
