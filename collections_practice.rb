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
   
end

def find_cool(array_elements)

end

def organize_schools

end