# your code goes here
def begins_with_r(array)
i = []
array.select{ |elements| elements.downcase.start_with?("r") ? i << true : i << false} 
if i.include?(false)
  return false
else 
  return true
end 
end 

def contain_a(array)

array.select {|elements| elements.downcase.include?("a")}

end 

def first_wa(array)
  array.select {|elements| elements.to_s.downcase.start_with?("wa")}.first
end 

def remove_non_strings(array)
  array.reject {|elements| elements != elements.to_s}
end 

def count_elements(hash)
counts = Hash.new(0)

hash.each {|element| counts[element] += 1}
array = []

counts.each do |element, num|
  element.each{|key, val| array << {key => val, :count => num}}
end
array
end 

def merge_data(keys, data)
merged = []
data.each do |hash| 
  hash.each do |name, info|
    keys.each do |key_val|
      merged << key_val.merge(info) if key_val.values[0] == name
     end 
   end
  end
merged  
end 

def find_cool(one)
array = []
one.map do |value| 
  value.each {|k,v| array << value if k == :temperature && v == "cool"}
end 
array
end 

def organize_schools(schools)
locations = {}

schools.values.each do |location| locations[location.values[0]] = []
end 
schools.each {|school, location| locations[location.values[0]] << school}
locations 
  end