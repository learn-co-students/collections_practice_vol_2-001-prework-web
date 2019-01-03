
def begins_with_r(array)
  array.all? {|tool| tool.start_with?("r")}
end

def contain_a(array)
  new_array = []
  array.each do |element|
    element.each_char {
      |a| if a == "a"
        new_array.push(element)
      end
      }
  end
  return new_array
end

def first_wa(array)
  array.each do |element|
    if element.class != String
      element = element.to_s
    end
    if element.start_with?("wa")
      return element
      break
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.class == String
      new_array.push(element)
    end
  end
  array = new_array
end

def count_elements(array)
  new_array = []
  array.each do |x|
    number = 0
    number = array.count(x)
    new_hash = {count: number}
    x = x.merge(new_hash)
    new_array.push(x)
  end
  new_array = new_array.uniq
  return new_array
end

def merge_data(first, second)
  new_thing = []
  first.each do |top|
    new_thing << top
  end
  second.each do |data|
    data.each do |k, v|
      array = []
      array = v
      new_thing << array
    end
  end
  new_thing1 = new_thing[0].merge(new_thing[2])
  new_thing2 = new_thing[1].merge(new_thing[3])
  final_thing = []
  final_thing.push(new_thing1)
  final_thing.push(new_thing2)
  return final_thing
end

def find_cool(thing)
  array = []
  thing.each do |x, y|
    x.each do |k, v|
      if v == "cool"
        array.push(x)
        return array
      end
    end
  end
end

def organize_schools(thing)
  hash = {}
  array = []
  array2 = []
  array3 = []
  thing.each do |x, y|
    y.each do |m, k|
      if k == "NYC"
        array.push(x)
        hash[k] = array
      elsif k == "SF"
        array2.push(x)
        hash[k] = array2
      elsif k == "Chicago"
        array3.push(x)
        hash[k] = array3
      end
    end
  end
  return hash
end
