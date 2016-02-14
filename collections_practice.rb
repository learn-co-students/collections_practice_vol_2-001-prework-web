def begins_with_r(array)
  if array.count {|elem| elem[0] == "r"} == array.length
    true
  else
    false
  end
end


def contain_a(array)
  arrayz = []
  array.each do |elem|
    if elem.include?("a")
      arrayz << elem
    end
  end
  arrayz
end


def first_wa(array)
  array.each do |elem|
    if elem[0..1] == "wa"
      return elem
      break
    end
  end
end


def remove_non_strings(array)
  array.delete_if {|elem| !elem.is_a? String}
end


def count_elements(array)
  new_array = []
  array.uniq.each do |elem|
    elem[:count] = array.count(elem)
    new_array << elem  
  end
  new_array
end  


def merge_data(keys, data)
  merged_data = data.merge(keys)
  merged_data
end