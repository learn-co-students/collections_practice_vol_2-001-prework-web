# your code goes here
def begins_with_r(array)
  count = 0
  array.each {|x| x.start_with?('r') ? count += 1 : count}
  count == array.length ? true : false
end

def contain_a(array)
  arr = []
  array.each {|x| x.include?('a') ? arr.push(x) : nil}
  arr
end

def first_wa(array)
  ar = []
  array.each {|x|
    if ar.size == 0
      if x.instance_of? String
        if x.include?('wa')
          ar.push(x)
        end
      end
    end
    }
  ar[0]
end

def remove_non_strings(array)
  array.delete_if {|x|
    if x.instance_of? String
      false
    else
      true
    end
  }
end

def count_elements(array)
  names = []
  ar = []
  array.each {|x|
    x.each_value {|val| names.push(val)}
  }
  temp_name = ""
  temp_count = 0

  while names.length > 0
    temp_name = names[0]
    temp_count = names.count(temp_name)
    names.delete(temp_name)
    temp_hash = {:name => temp_name, :count => temp_count}
    ar.push(temp_hash)
  end
  ar
end

def merge_data(array1, array2)
  merged = []
  temp_hash = {}
  counter = 0
  array1.each{|x|
    array2.each{|y|
      y.each {|key, value|
        if x.has_value?(key)
          temp_hash = x.merge(value)
          merged.push(temp_hash)
        end
      }
    }

  }
  merged
end

def find_cool(array)
  ar = []
  array.each {|hash|
    if hash.has_value?("cool")
      ar.push(hash)
    end
    }
  ar
end

def organize_schools(schools)
  temp_hash = {}
  schools.each {|key, value|
    if temp_hash.has_key?(value[:location])
      temp_hash[value[:location]].push(key)
    else
      temp_hash[value[:location]] = [key]
    end
  }
  temp_hash
end
