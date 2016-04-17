# your code goes here
def begins_with_r(array_elements)
    array_elements.all? do |element|
        element[0] == "r"
    end
end

def contain_a(array_elements)
    array_elements.select do |element|
       element.include?("a")
    end
end

def first_wa(array_elements)
    array_elements.find do |element|
        element =~ /wa/
    end
end

def remove_non_strings(array_elements)
    array_elements.delete_if do |element|
        element != element.to_s
    end
end

def count_elements(array_elements)
    array_elements.uniq.each do |element|
        element[:count] = array_elements.count(element)
    end
end

def merge_data(keys, data)
    keys.collect do |key|
        key.merge(data[0][key[:first_name]])
    end
end

def find_cool(array_elements)
    array_elements.select do |element|
    element[:temperature] == "cool"
  end
end

def organize_schools(schools)
    loc_hash = []
    city_hash = {}
    schools.each do |school, data|
        loc_hash << data.values
    end
    loc_hash.uniq.flatten.each do |value|
        city_hash[value] = []
    end
    
    schools.each do |school, data|
        data.each do |attribute, city|
            city_hash.each do |city_2, city_schools|
                if city_2 == city
                    city_schools << school
                end
            end
        end
    end
    city_hash
end