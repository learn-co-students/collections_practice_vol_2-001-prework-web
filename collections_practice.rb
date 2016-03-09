def begins_with_r(array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end

  true
end

def contain_a(a)
  result = []
  a.each do |n| 
    i=0
    while i<n.length
      if n[i] == "a"
        result << n
      end
      i+=1
    end
  end

  result
end

def first_wa(array)
  array.find do |word| 
    word[0]=="w" && word[1]=="a"
  end
end

def remove_non_strings(array)
  array.delete_if {|object| object.class != String}
end 

def count_elements(array)
h = Hash.new 0
array.each {|name| h[name] += 1}
h.keys.map {|k| k[:count] = h[k]; k}
end

def merge_data(keys, data)
  keys.map { |v| 
    v[:first_name] == "blake" ? v.merge(data[0]["blake"]) : v.merge(data[0]["ashley"]) 
  }
end

def find_cool(array)
  array.map {|h| h if h[:temperature] == "cool"}.compact
end


def organize_schools(schools)
  h = Hash.new 0
  schools.each { |k, v|
    v.each { |k2, v2|
      h[v2] = []
    }
  }

  schools.each do |k, v|
    h[v[:location]] << k

  end

  h
end







