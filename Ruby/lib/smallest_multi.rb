def get_smallest_multiple(arr)
  i = arr.max 
  success = false
  while (success == false)
      success = true
      arr.each { |n|
        unless i % n == 0
          i += 1
          success = false
          break
        end
      }
  end
  i
end