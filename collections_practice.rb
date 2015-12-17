def begins_with_r(a)
  rs = a.select { |i| i[0] == "r" }
  rs.length == a.length ? true : false
end

def contain_a(a)
  a.select { |i| i.include? "a" }
end

def first_wa(a)
  a.find do |i|
    i.class == String ? (i.start_with? "wa") : false
  end
end

def remove_non_strings(a)
  a.select { |i| i.class == String }
end

def count_elements(a)
  counter = a.map { |i| a.count(i)}
  counted = a.each_with_index do |hash, index|
    hash[:count] = counter[index]
  end
  counted.uniq
end

def merge_data(keys, data)
  #keys = [{:first_name => "blake"}, {:first_name => "ashley"}]
  #data = [{"blake" => {:other_stuff => "here"}}, {"ashley" => {:other_stuff => "here"}}]
  names = keys.map { |i| i[:first_name] }
  data_ary = names.map { |name| data[0][name] }
  keys.each_with_index.map { |hash, i| hash.merge(data_ary[i])}
end

def find_cool(array)
  # array = [{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}]
  array.select { |i| i[:temperature] == "cool" }
end

def organize_schools(schools)
# { "flatiron school bk"=>{:location=>"NYC"},
#   "flatiron school"=>{:location=>"NYC"} .. }
  city_schools = {}
  schools.each do |school , location|
    city = location.values.join
    city_schools[city] = [] unless city_schools.has_key?(city)
    city_schools[city] << school
  end
  city_schools
end

