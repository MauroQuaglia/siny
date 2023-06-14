require_relative '../lib/siny_random'

describe 'siny' do

  it 'should be pass' do
    expect(true).to be_truthy
  end

  it 'should be pass siny random' do
    expect(SinyRandom.new.get).to include('MQ')
  end

end