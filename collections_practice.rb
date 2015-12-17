def begins_with_r(array)
  new_array = []
  array.collect do |check|
    if check[0] == "r"
      then new_array << check
      end
    end
new_array.length == array.length
 end

  def contain_a(array)
    array.select {|check| check.include?("a")}
  end

  def first_wa(array)
    new_array = []
    array.each do |check|
      if check.is_a? String
        new_array << check
      end
    end
    new_array.detect {|n_check| n_check.include?"wa"}
    end

  def remove_non_strings(array)
    array.select {|check| check.is_a? String}
  end

  def count_elements(array)
    new = []
    array.uniq.each_with_index do |elem, index|
      new << array[index+1].merge(Hash[:count, array.count(elem)])
  end
  new
end

  def merge_data(keys, data)
    new_array = []
  change_blake = data[0]["blake"].to_a.unshift(keys[0].to_a.flatten)
    nu_hash = Hash[change_blake.map {|key, value| [key, value]}]
  change_ashley = data[0]["ashley"].to_a.unshift(keys[1].to_a.flatten)
  nu_hash_ash = Hash[change_ashley.map {|key, value| [key, value]}]
  new_array << nu_hash
  new_array << nu_hash_ash
  new_array
    end

  def find_cool(cool)
        coolray = []
  cool.each do |check|
      if check[:temperature] == "cool"
  coolray << check
  end
end
coolray
    end

def organize_schools(schools)
        nyc_array = []
        sf_array = []
        chicago_array = []
    schools.each do |school, where|
        where.each do |tag, city|
        if city == "NYC"
            nyc_array << school
        elsif city == "SF"
        sf_array << school
        elsif city == "Chicago"
        chicago_array << school
    end
    end
end
school_locations = Hash.new
    school_locations["NYC"] = nyc_array
    school_locations["SF"] = sf_array
    school_locations["Chicago"] = chicago_array
    school_locations
    end

