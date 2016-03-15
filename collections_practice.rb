require 'byebug'
def begins_with_r(array)
  array.all? { |el| el.start_with?("r")}
end

def contain_a(array)
  array.select { |el| el.include?("a") }
end

def first_wa(array)
  array.find { |el| el.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |el| !el.is_a?(String) }
end

def count_elements(array_of_hashes)
  count_hash = Hash.new(0)

  array_of_hashes.each do |hash|
    hash.each do |key, value|
      count_hash[value] += 1
    end
  end

  new_arr = []

  count_hash.each do |key, value|
    new_arr << { name: key, count: value }
  end

  new_arr
end

def merge_data(keys, data)
  new_arr = []

  data.each do |data_hash|
    data_hash.each do |name, attributes_hash|
      keys.each do |name_hash|
        if name_hash.values.first == name
          new_arr << name_hash.merge(attributes_hash)
        end
      end
    end
  end
  new_arr
end

def find_cool(array_of_hashes)
  new_arr = []

  array_of_hashes.each do |hash|
    hash.each do |key, value|
      new_arr << hash if value == "cool"
    end
  end

  new_arr
end

def organize_schools(schools)
  organized = { }
  schools.each do |school_name, loc_hash|
    if organized[schools[school_name][:location]].nil?
      organized[schools[school_name][:location]] = [school_name]
    else
      organized[schools[school_name][:location]] << school_name
    end
  end
  organized
end
