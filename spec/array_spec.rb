RSpec.describe Array do
  it 'Has to be empty' do
    expect(subject.length).to eq(0)
    subject.push('hola')
    expect(subject.length).to eq(1)
  end
end
