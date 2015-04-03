#Multiples of 3 and 5
def get_all_multiples(bases, max)
  array, max = [], max-1
  bases.each { |num|
    array = combine(array, get_multiples(num, max))
  }
  array.inject(:+)
end

def combine(arr1, arr2)
  arr1.concat(arr2).uniq
end

def get_multiples(num, max)
  array = []
  (num..max).step(num) do |n|
    array << n
  end 
  array
end