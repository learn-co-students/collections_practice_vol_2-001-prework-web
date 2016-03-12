def begins_with_r(array)
  array.all? { |element| element.start_with?("r") }
end




def contain_a(array)
  array.select { |element| element.include?("a") }
end




def first_wa(array)
  array.find { |element| element.to_s.start_with?("wa") }
end




def remove_non_strings(array)
  array.delete_if {|element| element != element.to_s }
end





def count_elements(array)
  array.uniq.collect do |element|
    element[:count] = array.count(element)
    element
  end
end




def merge_data(keys, data)
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




def find_cool(cool)
answer = []
  cool.each do |element|
    element.each do |key, value|
      answer << element if value == "cool"
    end
  end
  answer
end




def organize_schools(schools)
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



