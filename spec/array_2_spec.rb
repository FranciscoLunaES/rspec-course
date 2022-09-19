RSpec.describe Array do
  subject(:sally) do
    %w[hi hola]
  end

  it 'has a length of 2' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'can be used as sally' do
    expect(sally.length).to eq(2)
  end
end
