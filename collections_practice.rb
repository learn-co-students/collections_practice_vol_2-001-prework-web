# your code goes here
def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end

def first_wa(array)
  array.find do |x|
    if x.is_a?(String)
      x.start_with?("wa")
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.is_a?(String) == false
  end
end

def count_elements(array)
  count = []
  array.uniq.each do |x|
    x.each_pair do |key,value|
      count << { key => value, :count => array.count(x) }
    end
  end
  count
end

def merge_data(keys, data)
  merged = []
  keys.each_index do |x|
    data[0].keys.each do |y|
      if y == keys[x][:first_name]
        merged << keys[x].merge(data[0][y])
      end
    end
  end
  merged
end

def find_cool(array)
  cool = []
  array.select do |x|
    x.each_pair do |key,value|
      if value == "cool"
        cool << x
      end
    end
  end
  cool
end

def organize_schools(schools)
  organized = {}
  ny = []
  sf = []
  chi = []
  schools.each_pair do |key,value|
    value.each_pair do |k,v|
      if v == "NYC"
        ny << key
      elsif v == "SF"
        sf << key
      elsif v == "Chicago"
        chi << key
      end
    end
  end
  organized = { "NYC" => ny, "SF" => sf, "Chicago" => chi }
end
