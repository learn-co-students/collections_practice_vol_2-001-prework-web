def begins_with_r(array)
  #array.include? { |e| e.match( /^r/ ) }
  array.all? do |x|
  x[0] == "r"
end
end

def contain_a(array)
  array.select { |x| x.match( /a/ ) }
end

def first_wa(array)
  array.find { |x| x.match( /wa/ ) }
end

def remove_non_strings(array)
   array.keep_if { |x| x.is_a?(String) }
end

def count_elements(array)
  #array.uniq{|d| d[:a]}
  array.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  return "#{word} :count#{counts[word]}, "
end

def merge_data(keys, data)
  a = keys.flatten
  b = data.flatten
  c = a | b
  return c.reduce(:concat)
  #array.flatten
  #array.reduce(:concat)
end

def find_cool(array)
  array.find { |x| x.match /cool/ }
end

def organize_schools(array)

end