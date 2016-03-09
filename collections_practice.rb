# your code goes here
def begins_with_r(array)
  array.all? {|x| x.start_with?("r")}
end


def contain_a(array)
  array.select {|x| x.include?("a")}
end


def first_wa(array)
  array.find {|x| x.to_s.start_with?("wa")}
end


def remove_non_strings(array)
  array.delete_if {|x| !x.is_a?(String)}
end


def count_elements(array)
result = []
  array.uniq.each do |word|
    word[:count] = array.count(word)
    result << word
  end
  result
end


def merge_data(keys, data)
   [keys[0].merge(data[0]["blake"]),
  keys[1].merge(data[0]["ashley"])]
end


def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end


def organize_schools(schools)
hash={"NYC"=>[], "SF"=>[], "Chicago"=>[]}
  schools.each do |x,y|
    if y[:location]=="NYC"
      hash["NYC"].push(x)
    elsif y[:location]=="SF"
      hash["SF"].push(x)
    elsif y[:location]=="Chicago"
      hash["Chicago"].push(x)
    end
  end
  return hash
end

