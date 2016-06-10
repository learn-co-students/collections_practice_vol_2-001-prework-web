# your code goes here
def begins_with_r(array)
  array.each do |i|
    i = i.downcase
    if i[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(array)
  array.select {|a| a.include? "a"}
end

def first_wa(array)
  array.find {|a| a[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.select {|a| a.is_a?(String)}
end

def count_elements(array)
  new_array = []
  array.uniq.each do |elem|
    new_array << {:name=>elem[:name], :count=>array.count(elem)}
  end
  new_array
end

def merge_data(a1,a2)
  i = 0
  new_array = []
  while i <= a2.length
    h = a2[0].values[i]
    h[a1[i].keys[0]] = a1[i].values[0]
    new_array << h
    i += 1
  end
  new_array
end

def find_cool(arr)
  i = 0
  new_array = []
  arr.each do |elem|
    if elem.values[1] == "cool"
      new_array << elem
    end
  end
  new_array
end

def organize_schools(h)
  new_array = []
  h.each do |k,v|
    v.each do |k2,v2|
      new_array << [v2,k]
    end
  end
  new_array.inject(Hash.new{ |h,k| h[k]=[] }){ |h,(k,v)| h[k] << v; h }
end
