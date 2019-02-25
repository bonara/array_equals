# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)
  if array1.nil? && array2.nil?
    return true
  
  elsif array1.nil? || array2.nil?
    return false
  
  elsif array1.length != array2.length
    return false
  
  else
    match_count = 0 
    array2.length.times do |i|
      if array1[i] == array2[i]
        match_count += 1
      else 
        return false
      end
    end

    if match_count == array1.length
      return true
    end
  end
end