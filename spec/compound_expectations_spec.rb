RSpec.describe 25 do
  it 'can test for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }
end

RSpec.describe 'caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end

  it { is_expected.to start_with('cat').and end_with('pillar') }
end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end
end

# Assignment

RSpec.describe 'firetruck' do
  it 'can check starts with the substring "fire" and ends with the substring "truck".' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end

RSpec.describe 20 do
  it 'can check is even and that it responds to the times' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'can check includes the value 42 and starts with the values 4, 8, and 15' do
    expect(subject).to include(42).and start_with([4, 8, 15])
  end
end
