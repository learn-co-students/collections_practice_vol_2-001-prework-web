# your code goes here
def begins_with_r(array)
  !array.any? { |word| word[0] != "r"}
end

def contain_a(array)
  array.select { |word| word.include? "a" }
end

def first_wa(array)
  array.find { |word| word[0,2] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |item| item.class != String}
  array
end

def count_elements(array)
  count_hash = array.each_with_object(Hash.new(0)) { |item,counts| counts[item] += 1 }
  counted_array = []
  count_hash.each do |key, count|
    key[:count] = count 
    counted_array.push key
  end
  counted_array
end

