require_relative '../lib/fibo'
describe 'Fibo' do 
  it 'should generate a correct sequence for a max num' do 
   expect(generate_sequence(13)).to eq([1,2,3,5,8,13])
  end
  it 'returns even numbers' do
    expect(even_array([1,2,3,4,5,6])).to eq([2,4,6])
  end 

  it 'returns sum of array' do
    array = [2,4,6]
    expect(sum_array(array)).to eq(12)
  end

  it 'returns result of 4 mlj even fibonacci sum' do
    expect(fibo_even_sum(4000000)).to eq(4613732)
  end
end