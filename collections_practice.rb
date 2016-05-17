# your code goes here
def begins_with_r(arr)
  arr.all? { |el| el[0].downcase == "r" }
end

def contain_a(arr)
  arr.keep_if do |el|
    el.split("").include?("a")
  end
end

def first_wa(arr)
  arr.each do |el|
    return el if el[0..1].downcase == "wa"
  end
end

def remove_non_strings(arr)
  arr.delete_if do |el|
    el.class != String
  end
end

def count_elements(hash_arr)
  keys = []
  counts = hash_arr.map { |el| hash_arr.count(el) }
  counts = counts.uniq
  hash_arr = hash_arr.uniq
  i = 0
  until counts.empty?
    count = counts.shift
    hash_arr[i][:count] = count
    i += 1
  end
  hash_arr
end

def merge_data(keys, data)
  merged_data = [{}, {}]
  keys.each do |names|
    names.each do |k, v|
      if v == "blake"
        merged_data[0][k] = v
      elsif v == "ashley"
        merged_data[1][k] = v
      end
    end
  end
  data.each do |names|
    names.each do |name, cats|
      cats.each do |k, v|
        if name == "blake"
          merged_data[0][k] = v
        elsif name == "ashley"
          merged_data[1][k] = v
        end
      end
    end
  end
  merged_data
end

def find_cool(dict)
  arr = []
  dict.each do |hash|
    hash.each do |k, v|
      if v == "cool"
        arr << hash
      end
    end
  end
  arr
end

def organize_schools(schools)
  result = {}
  schools.each do |name, hash|
    hash.each do |k, v|
      if result[v].nil?
        result[v] = [name]
      else
        result[v] << name
      end
    end
  end
  result
end
