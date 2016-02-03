def begins_with_r(things)
  things.all? { |thing| thing =~ /r/ }
end

def contain_a(things)
  things.select { |thing| thing =~ /a/ }
end

def first_wa(things)
  things.select { |thing| thing =~ /wa/ }.first
end

def remove_non_strings(things)
  things.delete_if { |thing| thing.class != String }
end

def count_elements(things)
  # I called it words because it's the 
  # same thing as a name in this case
  words = Array.new
  things.each do |thing|
    if words.detect { |w| w.has_value?(thing[:name]) }
      words.each do |word|
        if word[:name] == thing[:name]
          word[:count] += 1
        end
      end
    else
      words << { name: thing[:name], count: 1 }
    end
  end
  words
end

def merge_data(keys, data)
  merged_data = Array.new
  data.each do |d|
    keys.each do |k|
      merged_data << k.merge(d[k[:first_name]])
    end
  end
  merged_data
end

def find_cool(things)
  new_things = Array.new
  things.each do |thing|
    if thing.has_value?('cool')
      new_things << thing
    end
  end
  new_things
end

def organize_schools(things)
  new_things = Hash.new
  things.each do |thing|
    location = thing[1].values
    if new_things.has_key?(location[0])
      new_things[location[0]] << thing[0]
    else
      new_things[location[0]] = [thing[0]]
    end
  end
  new_things
end
