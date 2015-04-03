require_relative '../lib/smallest_multi'
describe 'Multi' do 
  it ' smallest multiple 1..10' do
    expect(get_smallest_multiple((1..10).to_a)).to eq(2520)
  end
   it 'smallest multiple 1..20 ' do
   pending
    expect(get_smallest_multiple((1..20).to_a)).to eq(232792560)
  end
end