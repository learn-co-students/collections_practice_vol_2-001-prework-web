def begins_with_r(name)
  name.all? { |name| name.start_with?("r")} 
end

def contain_a(name)
  name.select { |name| name.include?("a")}
end

def first_wa(name)
  name.find { |name| name.to_s.start_with?("wa")}
end

def remove_non_strings(item)
  item.delete_if { |item| item.class != String }
end

def count_elements (array)
  new_array = []
  array.each { |element| new_array << element unless new_array.include?(element)}
    new_array.each do |item|
      counting = array.select{|thing| item == thing}
        item[:count] = counting.length
      end
    return new_array
end 

def merge_data(key, data)
  array = []
  key.each do |thing1|
    thing1.each do |key1, value1|
      data.each do |thing2|
        data[0][value1][key1] = value1
        array << data[0][value1]
      end
    end
  end
  array
end

def find_cool(new_hash)
  cool = []
  new_hash.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool << hash
      end
    end
  end
  cool
end

def organize_schools(hash)

  organized_hash = Hash.new()
    hash.each do |key_school, value_location|
        value_location.each_value do |city|
          organized_hash[city] = (organized_hash[city].to_a || ' ' ) << key_school
        end
      end
      organized_hash
end 

