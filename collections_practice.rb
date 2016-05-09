# your code goes here
def begins_with_r(array)
  if array.length == 1
    array[0].start_with?('r')
  else
    array[0].start_with?('r') and begins_with_r(array.drop(1))
  end
end

def contain_a(array)
  a_array = []
  array.each do |item|
    if item.include?('a')
      a_array << item
    end
  end
  a_array
end

def first_wa(array)
  array.each do |item|
    if item.start_with?('wa')
      return item
    end
  end
end

def remove_non_strings(array)
  s_array = []
  array.each do |item|
    if item.class == String
      s_array << item
    end
  end
  s_array
end

def count_elements(array)
  c_array = []
  array.uniq.each do |item|
  	dict = {:name => item, :count => array.count(item)}
    c_array << dict
  end
  c_array
end

def merge_data(keys, data)
  merged_data = []
  counter = 0
  keys.each do |key|
  	dict = { key.keys[0] => key.values[0], data[counter][key.values[0]].flatten }

  	merged_data << dict
  	counter += 1
  end
  merged_data
end