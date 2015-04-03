def generate_sequence(max) 
  seq, fibo1, fibo2, tmp = [], 1, 1, 1

  while(tmp < max) do
    tmp = fibo2
    seq << fibo2
    fibo2 = fibo1+fibo2
    fibo1 = tmp
  end
  seq
end

def even_array(arr)
  arr.select { |val|
    val if val % 2 ==0
  }
end

def sum_array(arr)
  arr.inject(:+)
end

def fibo_even_sum(max)
  array = generate_sequence(max)
  filtered = even_array(array)
  sum_array(filtered)
end