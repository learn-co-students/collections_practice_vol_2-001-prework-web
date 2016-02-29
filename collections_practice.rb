# your code goes here
def begins_with_r(array)
  if array.all? {|x| x[0]=="r"}
    true
  else
    false
  end
end

def contain_a(array)
  newArr = []
  array.each {|x| 
    if x.include?("a")
      newArr << x
    end
  }
  newArr
end

def first_wa(array)
  array.each {|x|
    if x[0]=="w" && x[1]=="a"
      return x
    end
  }
end

def remove_non_strings(array)
  newArr = []
  array.collect{ |x| 
    if x.is_a?(String)
      newArr << x
    end
  }
  newArr

end


def count_elements(array)
  newArr = array.uniq
  newArr.each do |x|
    x[:count] = array.count(x)
  end
end



def merge_data(keys,data)
  newArr = []

  keys.each do |hash|
    hash.each_key do |name|
      data.each do |data|
        newArr << hash.merge(data[hash[name]])
      end
    end
  end
  newArr
end

def find_cool(array)
  newArr = []

  array.each do |hash|
    hash.each_value do |value|
      if value == "cool"
        newArr << hash
      end
    end
  end

  newArr
end

def organize_schools(schools)
  orgSchools = Hash.new(0)

  schools.each_pair do |school, loc|
    loc.each_value do |value|
      orgSchools[value] = []
    end
  end

  schools.each do |school, loc|
    loc.each_value do |value|
      if orgSchools.include?(value)
        orgSchools[value] << school
      end
    end
  end
  

  orgSchools


end