# your code goes here
def begins_with_r(tools)
  tools.all? do |tool|
    tool[0] == "r"
  end
end

def contain_a(arr)
  arr.select do |word|
    word.include?("a")
  end
end

def first_wa(arr)
  arr.detect do |word|
    word.to_s.include?("wa")
  end
end

def remove_non_strings(arr)
  arr.delete_if { |element| element.is_a?(String) == false}
end

def count_elements(arr)
  uniq_arr = arr.uniq

  counter = Hash.new(0)

  arr.each do |e|
    counter[e] += 1
  end

  new_arr = []

  counter.each do |k, v|
    new_arr << uniq_arr[uniq_arr.index(k)].merge(count: v)
  end

  new_arr
end

def merge_data(a, b)

  arr = []

  for idx in 0..(a.length - 1)

    for idx2 in 0..(b.length - 1)
    
      for idx3 in 0..(a[idx].values.length - 1)
    
        for idx4 in 0..(b[idx2].keys.length - 1)
    
          if a[idx].values[idx3] == b[idx2].keys[idx4]
            arr << a[idx].merge(b[idx2].values[idx4])
          end
    
        end
      end
    end
  end

  arr
end

def find_cool(array)

  result = []

  for i in 0..(array.length - 1)
    if array[i].values.include?("cool")
      result << array[i]
    end
  end
  result
end

def organize_schools(arr)

  result = Hash.new([])

  for idx in 0..(arr.length - 1)
    result[arr.values[idx].values[0]] = []
  end 

  for idx in 0..(arr.length - 1)
    result[arr.values[idx].values[0]] << arr.keys[idx]
  end 
  
  result
end