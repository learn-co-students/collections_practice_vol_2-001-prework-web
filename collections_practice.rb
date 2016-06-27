# your code goes here
# your code goes here
def begins_with_r(array)
  if array.any? {|item| item[0] != 'r'}
    return false
  else
    return true
  end
end

def contain_a(array)
  new_array = []
  array.each do |item|
    if item.index("a")
      new_array << item
    end
  end
  new_array
end

def first_wa(array)
  array.find{|x| x[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if{|x|  x.class != String}
end


def count_elements(array)
  array.each_with_object(Hash.new(0)) { |key, value| value[key[:name]] += 1 }.
      map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(array1, array2)
  merged =[]
  array1.each_index do |i|
    array2[0].keys.each do |name|
      merged << array1[i].merge(array2[0][name]) if name == array1[i][:first_name]
    end
  end
  merged
end


def find_cool(array)
  array.select{ |x| x[:temperature] == "cool" }
end


def organize_schools(array)
  array.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end