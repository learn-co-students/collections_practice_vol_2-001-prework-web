def begins_with_r(x)
  x.all? do |word|
    word.start_with?('r') == true
  end
end

def contain_a(x)
array = []
  x.each do |y|
    if y.include?("a") == true
      array << y
    end
  end
  array
end


def first_wa(x)
x.find do |y|
  y.to_s.start_with?('wa') == true
  end
end


def remove_non_strings(y)
  y.delete_if { |x| x.class != String}

end


def count_elements(x)
poop = []
  x.each do |y|
hash = {}
hash[:name] = y[:name]
hash[:count] = x.count(y)
poop << hash
end
poop.uniq
end


def merge_data(x, y)
i =0
array = []
until i >= x.count
  a = x[i].values.join
  if y[0][a] != nil
 array << x[i].merge(y[0][a])
 i +=1
end
end
array
end


def find_cool(x)
   i = 0
  array = []
until i >= x.count
if x[i].has_value?("cool") == true
array << x[i]
i +=1
else
  i +=1
end
end
array
end


def organize_schools(x)

locations = []
schools = []
x.each do |school_name, location|
locations << location.values
schools << school_name
end

new_array = []
locations.map do |values|
new_array << values.join
end

array_locations = new_array.uniq

hash = {}

array_locations.each do |city|
hash[city] = []

end

x.each do |school, location_hash|

location = x[school][:location]

hash[location] << school

end
hash

end


#count element
