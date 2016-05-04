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
      if x.include?('wa')
        ar.push(x)
      end
    end
    }
  ar[0]
end

def remove_non_strings(array)
  ar = []
  ar = array.each.with_index {|x, i| array.delete(i) if x.is_a?(!String)}
  ar
end

def count_elements(array)
  count = 0
  while count < array.length do
    num = array.count {|x| x.has_value?(x.values_at(:name))}
    count += 1
    array.uniq! {|h| h.values_at(:name)}
    array[count].merge!(:count => num)
  end
  array
end

def merge_data(array1, array2)
  merged = []
  array1.each {|h1|
    array2.each {|h2|
       merged.push(hash = h1.concat(h2.values)) if h1.has_key?(h2.keys)
      }
    }
  merged
end

def find_cool(array)
  ar = []
  array.each{|hash|
    ar.push(hash) if hash.each {|key, value| value.include?("cool")}
    }
  ar
end

def organize_schools(array)

end