def begins_with_r(array)
  array.all? {|elem| elem[0] == "r"}
end


def contain_a(array)
  arrayz = []
  array.each do |elem|
    if elem.include?("a")
      arrayz << elem
    end
  end
  arrayz
end


def first_wa(array)
  array.each do |elem|
    if elem[0..1] == "wa"
      return elem
      break
    end
  end
end


def remove_non_strings(array)
  array.delete_if {|elem| !elem.is_a? String}
end


def count_elements(array)
  new_array = []
  array.uniq.each do |elem|
    elem[:count] = array.count(elem)
    new_array << elem  
  end
  new_array
end  


def merge_data(keys, data)
  array = []
  keys.each do |elem|
    elem.each do |key, value|
      data[0][value] = Hash[key,value].merge!(data[0][value])
      array << data[0][value]
    end
  end
  array
end


def find_cool(array)
  new_array = []
  array.each do |elem|
    elem.each do |key, value|
      if value == "cool"
        new_array << elem
      end
    end
  end
  new_array  
end


def organize_schools(hash)
  new_hash = Hash.new { |hash, key| hash[key] = [] }
  hash.each do |key, value|
    value.each do |location, city|
      #new_hash[city] = []
      new_hash[city] << key
    end
  end
  new_hash
end
