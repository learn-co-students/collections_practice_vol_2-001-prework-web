# your code goes here

def begins_with_r(list)

  list.each { |word| return false if word[0] != "r"}
  true

end

def contain_a(list)

  list.select { |word| word.include?("a")}

end

def first_wa(list)

  list.find { |word| word.to_s.start_with?("wa")}

end

def remove_non_strings(list)

  list.select { |item| item.class == String }

end

def count_elements(list)

  list_with_count = []

  list.each do |hash|
    hash.each do |key, value|
      list_with_count_index = list_with_count.find_index { |item| item.has_value?(value)}
      if list_with_count_index
        list_with_count[list_with_count_index][:count] += 1
      else
        list_with_count << {key => value, :count => 1}
      end
    end
  end

  list_with_count

end

def merge_data(names_array, data_array)

  combined_array = []

  names_array.each do |name|
    first_name_key = :first_name
    first_name_value = name[:first_name]

    data_array.each do |datum|
      datum.each do |key, value|
        if key == first_name_value
          merged_hash = Hash.new(0)
          merged_hash[first_name_key] = first_name_value
          value.each { |key2, value2| merged_hash[key2] = value2}
          combined_array << merged_hash
        end
      end
    end
  end

  combined_array

end

def find_cool(input_array)

  output_array = []

  input_array.each do |cool_hash|
    if cool_hash[:temperature] == "cool"
      output_array << cool_hash
      return output_array
    end
  end

  return "No cool cats found."

end

def organize_schools(schools_hash)

  organized_schools_hash = Hash.new(0)

  schools_hash.each do |school, location_hash|
    location_hash.each_value do |city|
      if organized_schools_hash.has_key?(city)
        organized_schools_hash[city] << school
      else
        schools_array = [school]
        organized_schools_hash[city] = schools_array
      end
    end
  end

  organized_schools_hash

end



