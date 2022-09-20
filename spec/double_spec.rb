RSpec.describe 'a random double' do
  it 'only allows defined methoods to be invoked' do
    # stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)

    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # stuntman = double('Mr. Danger')
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq('Ouch')

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end

# 1. Create a double with the name "Database Connection".

# The double should have a method called connect that returns the value true.

# The double also have a method called disconnect that returns the value "Goodbye".

# The double's methods should be assigned in the initial invocation of the double method.

# Write two expectations, one for connect and one for disconnect, that confirms the return value of each.

# Assign the double to the variable db.

RSpec.describe 'a random double' do
  it 'only allows defined methoods to be invoked' do
    db = double('Database Connection', connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')
  end
end

# 2. Create a double with the name "File System". Assign the double to the variable fs.

# Using the allow method, give the double a read method that returns the value "Romeo and Juliet".

# Using the allow method, give the double a write method that returns the value false.
RSpec.describe 'a random double' do
  it 'only allows defined methoods to be invoked' do
    fs = double('File System')
    allow(fs).to receive(:read).and_return('Romeo and Juliet')
    allow(fs).to receive(:write).and_return(false)
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to eq(false)
  end
end
