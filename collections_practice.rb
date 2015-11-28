def begins_with_r(array)
  array.to_s.start_with?("r")
end

def contain_a(array)
  contain_a_array = array.select {|word| word.include?('a') == true}
end

def first_wa(array)
  wa_start = array.select {|word| word =~ /wa/}
  wa_start.first
end

def remove_non_strings(array)
  strings_only = array.keep_if {|element| element.class == String}
end

def count_elements(array)
  count_array = array.reduce(Hash.new(0)) {|name, count| puts name[count] +=1; name}
end

def merge_data(keys, data)
  merged = []
  data.each do |element| 
    element.each do |qual, score|
      keys.collect do |first_name|
        if first_name.values[0] == qual
          first_name = first_name.merge(score)
          merged << first_name
        end
      end
    end
  end
  merged
end

def find_cool(array)
  array.each do |hash|
    hash.each do |k,v|
      if v.start_with?('cool')
        return [hash]
      end
    end
  end
end

def organize_schools(array)
  
end








