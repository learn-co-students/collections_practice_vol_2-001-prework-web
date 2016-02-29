def begins_with_r(array)
  any_value = array.any? do |i|
    word_array = i.split ("")
    word_array[0] != "r"
  end
  if any_value == true
    false
  elsif any_value == false
    true
  end
end

def contain_a (array)
  return_words = []
  array.select do |i|
    truth_test = i.include? ("a")
  end
end 


def first_wa (array)
  empty_array = []
  array.each do |i|
    empty_array.push(i.to_s)
  end
  empty_array.find do |i|
    i.include?("wa")
  end
end

def remove_non_strings (array)
  array.delete_if do |i|
    i != i.to_s
  end
end


def count_elements(array)
  count = {}
  array.each do |a|
    name = a[:name]
    if count.include?(name)
      count[name] += 1
   else
    count[name] = 1
    end
  end
  count
  result = []
  count.each do |k,v|
    result << {:name => k, :count => v}
  end
  result
end

def merge_data(keys, data)
  data_values = [] # [{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:awesomeness=>9, :height=>60, :last_name=>"dubs"}]
  data.each do |i|
    i.each do |key, value|
      data_values << i[key]
    end
  end
  num = 0  # data_values = [{:first_name=>"blake"}, {:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley"}, {:awesomeness=>9, :height=>60, :last_name=>"dubs"}]
  keys.collect do |i|
    data_values.insert(num, i)
    num += 2  
  end
  num = 0 
  keys_data_combo = [] # keys_data_values = [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]
  keys.collect do |i|
    keys_data_combo << data_values[num].merge(data_values[num+1])
    num += 2
  end
  keys_data_combo 
end

def find_cool(cool)
  cool_array = []
  cool.each do |i|
    i.each do |key, value|
      cool_array << i if (value.length == 4 && value == "cool")
    end
  end
  cool_array
end

def organize_schools(schools)
  locations_array = []   #["NYC", "NYC", "SF", "Chicago", "NYC", "SF"]
  schools.each do |key, value|
    value.each do |location, city|
      locations_array << city
    end
  end
  final_hash = {}
  locations_array.uniq.each do |i|
    staging_array = []
    schools.each do |key, value|
      value.each do |location, city|
        staging_array << key if city == i
      end
      final_hash[i] = staging_array
    end
  end
  final_hash
end


