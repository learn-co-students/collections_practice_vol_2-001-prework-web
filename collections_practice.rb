def begins_with_r(array)
    array.each do |word|
        return false if (!(word.start_with? "r")) #if there is a word that doesn't start with r
    end
    true
end

def contain_a(array)
    array.select do |word|
        word.include?("a") #if any elements contain the letter a
    end
end

def first_wa(array)
    array.find do |word|
        word[0] == "w" && word[1] == "a" #return first element starting with wa
    end
end

def remove_non_strings(array)
    array.delete_if do |element|
        element.class != String #delete all non-strings from array
    end
end

def count_elements(array)
    new_array = array.uniq #consolidates repeating elements
    new_array.each do |x|
        x[:count] = array.count(x) #count how many times something appears in array
    end
end

def merge_data(array1, array2)
    new_array = []
    array1.each do |name_hash|
        array2.each do |attributes|
            new_array << name_hash.merge!(attributes[name_hash[:first_name]]) #merge two nested data structures
        end
    end
end

def find_cool(array)
    array.select do |hash|
        hash[:temperature] == "cool" #find all cool hashes
    end
end

def organize_schools(hash)
#organize schools by location
    new_hash = {}
    hash.each_pair do |school, location|
        location.each_value do |value|
            new_hash[value] = []
        end
    end
    hash.each do |school, location|
        location.each_value do |value|
            if new_hash.include?(value)
                new_hash[value] << school
            end
        end
    end
    new_hash #return new organized hash
end