require_relative '../lib/multiples'
describe 'multiples' do 
  
  it 'multiples generator of 3' do
    expect(get_multiples(3,10)).to eq([3,6,9])
  end
  it 'multiples generator of 5' do
     expect(get_multiples(5,10)).to eq([5,10])
  end

  #unifier
  it 'combines 2 arrays successfully' do
    expect(combine([1,2],[3,4])).to eq([1,2,3,4])
  end

  it 'combines 2 arrays uniquely successfully' do
    expect(combine([1,2],[2,3])).to eq([1,2,3])
  end

  it 'returns the correct result' do
    expect(get_all_multiples([3,5],10)).to eq(23)
  
  end
  it 'returns the correct result for 1000' do
    expect(get_all_multiples([3,5],1000)).to eq(233168)
  end
  
end