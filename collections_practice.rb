# your code goes here
def begins_with_r(array)
    return array.all? {|words| words[0] == "r"}

end

def contain_a(array)
  return array.select {|words| words.include?("a") }
end

def first_wa(array)
    array.find {|words| words.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|item| item.class == String}
end

def count_elements(array)
  array.group_by(&:itself).map {|k, v| k.merge(count: v.length)}
  end

def merge_data(keys, data)
  merge = []
  keys.each do |keys_hash|
    keys_hash.each do |keys_key, keys_value|
      data.each do |data_hash|
        data_hash.each do |data_key, key|
          if keys_value == data_key
            data_hash[data_key][keys_key] = keys_value
            merge << key
          end
        end
      end
    end
end
    merge
end

def find_cool(array)
  word = []
  array.each do |wor|
    wor.each do |key, value|
      if value == "cool"
        word.push(wor)
      end
    end
  end
  word
end

def organize_schools(schools)
  collection = {}
  schools.each do |school_key, school_val|
    if collection[school_val[:location]]
      collection[school_val[:location]].push(school_key)
    else
      collection[school_val[:location]] = [school_key]
    end
  end
  collection
end
