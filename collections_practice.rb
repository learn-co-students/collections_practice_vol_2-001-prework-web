require 'pry'

#your code goes here
def begins_with_r(array)
  array.each do |x|
    return false unless x[0] == "r"
  end
  return true
end

def contain_a(array)
  result = []
  array.each do |x|
    if x.include?("a")
      result << x
    end
  end
  result
end

def first_wa(array)
  array.each do |x|
    if (x[0] == "w" && x[1] == "a")
      return x
    end
  end
end

def remove_non_strings(array)
  i = 0
  while i < array.length
    if array[i].class == String
      i += 1
    else
      array.delete_at(i)
    end
  end
  array
end
