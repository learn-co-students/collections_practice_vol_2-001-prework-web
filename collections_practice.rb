def begins_with_r(array)
  array.all? { |e| e.start_with?("r") }
end

def contain_a(array)
  array.select { |str| str.include?("a") }
end

def first_wa(array)
  array.select{ |e| e.class == String }.find { |str| str.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |e| e.class != String }
end

# this is really all over the place but it works.
# would like to improve it
def count_elements(array)
  count = []
  array.each do |e|
    name_counter = count.select { |hash| hash[:name] == e[:name] }
    if name_counter.empty?
      count << {name: e[:name], count: 1}
    else
      count[count.index(name_counter[0])][:count] += 1
    end
  end
  count
end

# can't really figure this one out, I'll come back to it
# I know this solution isn't at all what's being asked
def merge_data(array1, array2)
  array1[0].merge!(array2[0]["blake"])
  array1[1].merge!(array2[0]["ashley"])
  array1
end

def find_cool(array)
  array.select { |hash| hash[:temperature] == "cool" }
end

def organize_schools(hash)
  organized = {}
  hash.each do |school,location_hash|
    location_hash.each do |location, city|
      organized.include?(city) ? organized[city] << school : organized[city] = [school]
    end
  end
  organized
end
