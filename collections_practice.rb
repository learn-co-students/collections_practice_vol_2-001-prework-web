def begins_with_r (array)
  array.all? do |word|
      word[0] == "r"
  end
end

def contain_a (array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa (array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
     new_array = []
     array.collect do |item|
         if item.is_a?(String)
             new_array << item
             end
         end
     new_array
end

def count_elements(hash)
     count = Hash.new
     hash.each do |check|
         if count.keys.include?(check)
             count[check] += 1
         else
             count[check] = 1
             end
         end
     new_array = []
     count.each_key do |this|
         ahash = Hash.new
         ahash[this.keys[0]] = this.values[0]
         ahash[:count] = count[this]
         new_array << ahash
         end
     new_array
end

def merge_data(keys, data)
     final = []
     keys.each do |key|
         data[0].keys.each do |datum|
             if key[:first_name] == datum
                 temp_hash = {:first_name => datum}
                 data[0][datum].keys.each do |merge|
                     temp_hash[merge] = data[0][datum][merge]
                     end
                 final << temp_hash
                 end
             end
         end
     final
     end

def find_cool(argument)
all_cool = []
   argument.each do |search|
     if search[:temperature] == "cool"
       all_cool << search
     end
  end
    all_cool
end

def organize_schools(schools)
  final = {}
    schools.keys.each do |search|
      if final.keys.include?(schools[search][:location])
        final[schools[search][:location]] << search
      else
        final[schools[search][:location]] = [search]
      end
    end
  final
end
