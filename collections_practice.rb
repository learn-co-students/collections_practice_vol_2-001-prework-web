# your code goes here
 
def begins_with_r(arr)
    arr.all? {|x| x[0].downcase == 'r'}
end

def contain_a(arr)
    arr.select {|element| element.downcase.split("").include? 'a'}
end

def first_wa(arr)
    arr.detect {|element| element.downcase[0,2] == 'wa'}
end

def remove_non_strings(arr)
    arr.select {|element| element.is_a?(String)}
end

def count_elements(list)
    new_array = list.uniq
    new_array.collect do |element|
        element[:count] = list.count(element)
    end
    new_array
end

def merge_data(keys, data)
    keys.map do |key|
        key.merge(data[0][key[:first_name]])
    end
end

def find_cool(data)
    data.select {|dict| dict[:temperature] == 'cool'}
end

def organize_schools(schools)
    organized_schools ={}
    schools.each do |school_name,location_hash|
        if organized_schools.has_key?(location_hash[:location])
            organized_schools[location_hash[:location]] << school_name
        else
            organized_schools[location_hash[:location]] = [school_name]
        end
    end
    organized_schools
end
