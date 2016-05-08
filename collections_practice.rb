# your code goes here
require 'pry'
def begins_with_r(array)
  array.all? do |tool|
    tool.start_with? 'r'
  end
end

def contain_a(array)
  array.select do |element|
    element_split = element.split("")
    element_split.include?("a")
  end
end

def first_wa(array)
    array.find do |thing|
      if thing.is_a?(String)
        thing_split = thing.split("")
        thing_split[0] == "w" && thing_split[1] == "a"
      end
    end
end

def remove_non_strings(array)
  array.delete_if {|thing| !thing.is_a?(String)}
end

def count_elements(array)
  final_array = []
  array.each do |pair|
    count = array.count(pair)
    final_hash = {}
    final_hash[:name] = pair[:name]
    final_hash[:count] = count
    final_array << final_hash
  end
  final_array = final_array.uniq
  final_array

end
# [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]
def merge_data(keys, data)
  hash_array = []
  blake_hash = {}
  ashley_hash = {}
  blake_hash[:first_name] = keys[0][:first_name]
  ashley_hash[:first_name] = keys[1][:first_name]
  data[0]["blake"].each do |attribute, info| 
    blake_hash[attribute] = info
  end
  data[0]["ashley"].each do |attribute, info|
    ashley_hash[attribute] = info
  end
  hash_array << blake_hash << ashley_hash
  hash_array
end

def find_cool(hashes)
  array =[]
  hashes.each do |hash|
    hash.each do |k, v|
      if v == "cool"
        array << hash
      end
    end
  end
  array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, location_hash|
    location_hash.each do |sym, location|
      new_hash[location] = []
    end
  end
  new_hash.each do |location, school_array|
    schools.each do |school, location_hash|
      if location == location_hash[:location]
        new_hash[location] << school
      end
    end
  end
  new_hash
end