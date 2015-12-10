require 'pry'

# your code goes here
def begins_with_r(array)
  array.all?{|elem| elem[0] == 'r'}
end

def contain_a(array)
  array.select{|word| word.include?('a')}
end

def first_wa(array)
  array.find{|w| w[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.select{|word| word.is_a? String}
end

def count_elements(array)
  new_array = array.uniq
  new_array.each{|elem| elem[:count] = array.count(elem)}
end

def merge_data(keys,data)
  new_array = []
  keys.each do |k|
    new_array << k.merge(data[0].values_at(k.values[0])[0])
  end
  new_array
end

def find_cool(cool)
  cool_array = []
  cool.each do |c|
    cool_array << c if c[:temperature] == 'cool'
  end
  cool_array
end

def organize_schools(schools)
  locations_collection = {}
  schools.values.uniq.each{|element| locations_collection[element[:location]] = []}
  schools.each{|key, value| locations_collection[value[:location]] << key}
  locations_collection
end


