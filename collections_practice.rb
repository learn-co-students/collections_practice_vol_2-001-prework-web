def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.detect do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.reject do |element|
    element.class != String
  end
end

def count_elements(array)
  array.uniq.collect do |element|
    element[:count] = array.count(element)
    element
  end
end

def merge_data(keys, data)
  array = Array.new
  data.collect do |item|
    item.each do |key1, value1|
      keys.each do |key|
        key.each do |key2, value2|
          if key1 == value2
            array << key.merge(value1)
          end
        end
      end
    end
  end
  array
end

def find_cool(array)
  array.select do |element|
    if element.values.include?("cool")
      element
    end
  end
end

def organize_schools(schools)
  organized_schools = Hash.new
  schools.each do |school, data|
    data.each do |place, city|
      if organized_schools.has_key?(city)
        organized_schools[city] << school
      else
        organized_schools[city] = [school]
      end
    end
  end
  organized_schools
end
