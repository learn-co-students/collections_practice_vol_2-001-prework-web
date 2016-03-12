def begins_with_r (array)
  array.all? do |element| 
    element.start_with?("r")
  end
end

def contain_a (array)
  array.select do |element| 
    element.include?("a") 
  end
end

def first_wa (array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings (array)
  array.delete_if do |element|
    element != element.to_s
  end
end

def count_elements (array)
  array.uniq.map do |element|
    element[:count] = array.count(element)
    element
  end
end

def merge_data (keys, data)
  merged = Array.new
    keys.each do |keys_person|
     keys_person.each do |keys_key, keys_value|
        data.each do |data_person|
          data_person.each do |data_name, data_details|
            if keys_value == data_name
              data_person[data_name][keys_key] = keys_value
              merged << data_details
            end
          end
        end
      end
    end
    merged
end

def find_cool (cool)
  final = []
  cool.each do |element|
    element.each do |name, temperature|
      final << element if temperature == "cool"
    end
  end
  final
end

def organize_schools (schools)
    answer = Hash.new
    schools.each do |school, data|
      data.each do |key, value|
        if key == :location
          !answer.keys.include?(value) ? answer[value] = [school] : answer[value] << school
        end
      end
    end
    answer
end
