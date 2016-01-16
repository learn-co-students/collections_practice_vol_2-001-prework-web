require 'pry'

# your code goes here
def begins_with_r(array)
  r_count = 0
  array.each { |word|
    r_count += 1 if word[0] == "r"
  }

  return true if r_count == array.length
  return false
end

def contain_a(array)
  array.keep_if {|e| e.include?("a")}
end

def first_wa(array)
  array.each { |e| return e if e[0, 2] == "wa"}
end

def remove_non_strings(array)
  array.keep_if { |e| e == e.to_s }
end

def count_elements(array)
  counts = array.uniq
  counts.collect! { |e|
    #binding.pry
    e[:count] = array.count(e)
    e
  }
end

def merge_data(keys, data)
  merged = []
  keys.each { |key_hash|
    data.each { |data_hash|
      data_hash.each { |person,info|
        #binding.pry
        if key_hash.has_value?(person)
          merged << info.merge(key_hash)
          #binding.pry
        end
      }
    }
  }
  merged.uniq
#  merged_data = keys.each { |key_hash|
#    key_hash.each { |key_array|
#      key_array.each { key_array_hash
#        key_array_hash.each { |k,v|
#          binding.pry
#          if data.has_key?(v)}
#    data.each {|data_hash|
#      }
#  merged_data = data.merge(keys)
end

def find_cool(hashes)
  #hash.find("cool")
  #hash.delete_if {|k,v| v != "cool"}
  cool_hashes = hashes.collect {|hash|
      #binding.pry
    hash if hash.has_value?("cool")
  }.compact
end

def organize_schools(schools)
  schools_by_location = {"NYC"=>[""], "SF"=>[""]}
  schools.each { |school, data|
    data.each { |key, location|
      #binding.pry
      schools_by_location[location].push(school)
    }
  }
  schools_by_location
end