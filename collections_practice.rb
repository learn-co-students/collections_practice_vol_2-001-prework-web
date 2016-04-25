def begins_with_r(array)
  array.each do |word|
    if word.start_with?("r") != true
      return false
    end
  end
  true
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  collector = []
  array.uniq.each do |word|
    word[:count] = array.count(word)
    collector << word
  end
  collector
end

def merge_data(keys, data)
  collector = []
  keys.each do |key|
        data.each do |element|
           element.each do |name, data_hash|
               if name == key[:first_name]
                  collector << key.merge(data_hash)
              end
           end
       end
  end
  collector
end

def find_cool(array)
  array.select do |word|
    word[:temperature] == "cool"
  end
end

def organize_schools(schools)
  collector = {}
  nyc_collector = []
  sf_collector = []
  chicago_collector = []
  schools.each do |school, location_hash|
    case location_hash[:location]
    when "NYC"
      nyc_collector << school
      collector["NYC"] = nyc_collector
    when "SF"
      sf_collector << school
      collector["SF"] = sf_collector
    when "Chicago"
      chicago_collector << school
      collector["Chicago"] = chicago_collector
    end
  end
  collector
end
