def begins_with_r(arr)
  arr.each {|item| return false unless item[0] == "r"}
  true
end

def contain_a(arr)
  arr.select{|word| word.include?("a")}
end

def first_wa(arr)
  arr.find {|item| item.to_s[0..1] == "wa"}
end

def remove_non_strings(arr)
  arr.select {|item| item.is_a?(String)}
end

def count_elements(arr)
  count = Hash.new(0)
  arr.each {|item| count[item] += 1}
  final_count = []
  count.each {|key, value| final_count << {:name => key.values[0], :count => value}}
  final_count
end

def merge_data(keys, data)
  new_array = []
  keys.each_with_index do |item1, index|
    new_array << item1.merge(data[0][item1.values[0]])
  end
  new_array
end

def find_cool(cool)
  cool.select {|item| item[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = Hash.new {|k, v| k[v] = []}
  schools.each {|name, location| organized_schools[location.values[0]] << name}
  organized_schools
end