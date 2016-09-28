def begins_with_r(array)
  array.all? { |element| element[0] == "r" }
end

def contain_a(array)
  array.select { |element| element.include? "a" }
end

def first_wa(array)
  array.find { |element| element.to_s.include? "wa" }
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  names_array = array.uniq.collect {|person| {:name => person[:name], :count => array.count(person)}}
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key|
    data.each do |data_hash|
      data_hash.each do |data_hash_key, data_hash_value|
        if data_hash_key == key[:first_name]
          merged_data << key.merge(data_hash_value)
        end
      end
    end
  end
  merged_data
end

def find_cool(cool)
  cool.select {|x| x[:temperature] == "cool"}
end

def organize_schools(schools)
  schools_by_city = {}
  schools.each do |school, detail|
    if !schools_by_city[detail[:location]]
          schools_by_city[detail[:location]] = [school]
    else
      schools_by_city[detail[:location]] << school
    end
  end
  schools_by_city
 end
