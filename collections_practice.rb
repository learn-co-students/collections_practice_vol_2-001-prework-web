def begins_with_r(array)
  array.all? do |x|
    x.start_with?("r")
  end
end

def contain_a(array)
  array.find_all { |a| a.include?("a")}
  # array.collect do |a|
  #   if a.include?("a")
  #     a
  #     puts "a here is #{a}"
  #   else
  #     deletes = array.delete(a)
  #     puts "deletes #{deletes}"
  #   end
  # end
end

# contain_a(["earth", "fire", "wind", "water", "heart"])

def first_wa(array)
  strings = array.join(",")
  # puts "strings are #{strings}"
  strings_in_array = strings.split(",")
  # puts "strings in array #{strings_in_array}"
  strings_in_array.find do |w| 
    what_do_you_return = w.start_with?("wa")
    # puts "what do you return #{what_do_you_return}"
  end
end

# first_wa(["candy", :pepper, "wall", :ball, "wacky"])

def remove_non_strings(array)
  array.find_all { |a| a.is_a?(String)}
end

def count_elements(array)
  # :count=>0
  new_array = []
  array.uniq.each{ |times| times[:count] = array.count(times)}
  #puts "#{array.uniq.each{ |times| times[:count] = array.count(times)}}"
  # new_array
end

# count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

def merge_data(first_name_key, data)
  # puts "keys into merge_data are #{first_name_key}"
  # puts "data is #{data}"
  # puts "data at key is #{data[0]}"
  # merged_data = data.inject(:merge)
  # puts "merged_data at key is #{data["blake"]}"
  # puts "merged_data is #{merged_data}"
  final_array = []
  first_name_key.collect do |each_hash_key|
    # puts "each_hash_key first level is #{each_hash_key}"
    data.collect do |each_data|
      # puts "each_data is #{each_data}"
      # puts "each_hash_key is #{each_hash_key[:first_name]}"
      # puts "each_data key is #{each_data[each_hash_key[:first_name]]}"
      final_array << each_hash_key.merge(each_data[each_hash_key[:first_name]])
      # each_hash_key[:first_name] = each_data[each_hash_key[:first_name]]
        # each_hash_key.merge(each_data).each do |key, first_name_key_in, data_in|
        #   puts "key in collect is #{key}"
        #   puts "first_name_key_in is #{first_name_key_in}"
        #   puts "data_in is #{data_in}"
        #   first_name_key_in = each_data
        # end
    end
  end
  final_array.flatten
  # flattened_keys = keys.flatten
  # flattened_data = data.flatten
  # flattened_keys.merge(flattened_data) { |k, x, y| x + y}
  # con.concat(data)
  # flattened_data = []
  # data.each do |flat|
  #   flattened_data << flat.flatten(3)
  # end
  # keys.each do |con|
  #   # con[:first_name] = flattened_data[con.count - 1]
  #   # puts "#{flattened_data}"
  # end
  # keys.each do |flat_more|
  #   flat_more.flatten
  # end
  # keys.flatten
end

def find_cool(hash)
  # puts "hash is #{hash}"
  # flattened_hash = []
  # flattened_hash << hash.flatten.reduce(:merge)
  # puts "#{flattened_hash}"
  final_array = []
  hash.collect do |array|
    # puts "array is #{array}"
    # puts "what is cool #{array[:temperature]}"
    array.find_all do |key, cool|
      # puts " cool is #{cool}"
      # puts "key is #{key}" 
      if cool == "cool"
        # puts "array inside if #{array}"
        final_array << array
      end

      # key
      # puts "key is #{key}"
    # end
    # puts "array is #{array}"
    # array
   end
 end
 return final_array
end

# find_cool([
#             {
#                    :name => "ashley",
#             :temperature => "sort of cool"
#         },
#             {
#                    :name => "blake",
#             :temperature => "cool"
#         }
#     ])


def organize_schools(hash)
  # puts "hash is #{hash}"
  # injected_hash = hash.inject({}) {|f,c| k,v = c.first; (f[k] ||= []) << v; f}
  # puts "injected_hash #{injected_hash}"
  # inverted_hash = hash.invert
  # puts "inverted_hash is #{inverted_hash}"
  # puts "hash key is #{hash[:location]}"
  key_array = []
  sorted_hash = {}
  reversed = {}
  sorted_hash = hash.sort_by do |school_key, location|
    # puts "school_key is #{school_key}"
    # puts "location is #{location}"
    # puts "location of :location is #{location[:location]}"
    location[:location]
  end
  # puts "sorted_hash is #{sorted_hash}"
  sorted_hash.each do |key, location_two|
    # puts "key_array is #{key_array}"
    # puts "reversed here is #{reversed}"
    # puts "location_two here is #{location_two}"
    if reversed.include?(location_two[:location])
      key_array << key
      key_array[1..-1] = key_array[1..-1].sort
      reversed[location_two[:location]] = key_array
      # puts "reversed inside if #{reversed}"
      # puts "sorted array #{key_array[1..-1].sort}"
      # key_array = key_array.sort
    else
      key_array = []
      key_array << key
      reversed[location_two[:location]] = key_array
      # puts "reversed inside else is #{reversed}"
    end
    # puts "reversed is #{reversed}"
  end
  return reversed
  # puts "reverse outside is #{reversed}"
end
