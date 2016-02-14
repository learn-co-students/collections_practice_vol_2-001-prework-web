def begins_with_r(array)
  if array.count {|x| x[0] == "r"} == array.length
    true
  else
    false
  end
end

def contain_a(array)
  arrayz = []
  array.each do |x|
    if x.include?("a")
      arrayz << x
    end
  end
  arrayz
end

def first_wa(array)
  array.each do |x|
    if x[0..1] == "wa"
      return x
      break
    end
  end
end

def remove_non_strings(array)
  array.each do |x|
    if x.is_a? String != true
      delete_at(x)
    end
  end
end