# your code goes here
def begins_with_r(tools)
  return tools.all? { |word| word[0] == "r" }
end

def contain_a(tools)
  return tools.select { |word| word.split("").include?("a") }
end

def first_wa(tools)
  tools.each { |word| return word if word[0..1] == "wa" }
end

def remove_non_strings(tools)
  i = 0
  while i < tools.length 
    if tools[i].class != String
      tools.delete_at(i)
      i -= 1
    end
    i+=1
  end
  return tools
end

def count_elements(arr)
  result = []
  to_push = arr.shift
  to_push[:count] = 1
  result.push(to_push)
  arr.each do |obj|
    bool = false
    result.each do |count|
      bool = true
      if count.keys[0] == obj.keys[0] && count[count.keys[0]] == obj[obj.keys[0]]
        count[:count] += 1
        bool = false
      end
    end
    if bool
      obj[:count] = 1
      result.push(obj)
    end
  end
  return result
end

def merge_data(keys, data)
  merged_data = []
    data.each do |person_obj|      
      person_obj.each do |person_obj_key, person_obj_val|
        obj_to_push = {}
        person_obj_val.each do |traits_key, traits_val|
          obj_to_push[traits_key] = traits_val
        end
        keys.each do |to_merge|
          if to_merge[to_merge.keys[0]] == person_obj_key
            obj_to_push[to_merge.keys[0]] = person_obj_key
          end
        end
        merged_data.push(obj_to_push)
      end
    end
    merged_data
end

def find_cool(arr)
  result = []
  arr.each do |obj|
    obj.each do |key, value|
      if value == "cool"
        result.push(obj)
      end
    end
  end
  result
end

def organize_schools(schools)
  result = {}
  
  schools.each do |school_key, school_val|
    if result[school_val[:location]]
      result[school_val[:location]].push(school_key)
    else
      result[school_val[:location]] = [school_key]
    end
  end
  result
end