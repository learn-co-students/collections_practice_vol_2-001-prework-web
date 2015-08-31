# your code goes here
def begins_with_r(array)
  x = array.select {|word| word.start_with?("r") }
  array.length == x.length
end

def contain_a(array)
  array.select {|word| word.include?("a") }
end

def first_wa(array)
  array.find { |word|
  word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if {|item| item.class != String }
end

def count_elements(array)
  container = []
  array.each do |item1|
    counter = 0
    item1.each do |key1, value1|
        array.each do |item2|
          item2.each do |key1, value2|
            if value2.include?(value1)
              counter += 1
            end
          end
        end
        new_hash = {}
        new_hash = {key1 => value1, :count => counter}
        if container.include?(new_hash)
          nil
        else
          container << new_hash
        end
    end
  end
  container
end

def merge_data(keys, data)
  array = []
  keys.each do |item1|
      item1.each do |key1, value1|
      data.each do |item2|
          data[0][value1][key1] = value1
          array << data[0][value1]
      end
    end
  end
  array
end

def find_cool(hash)
  container = []
  hash.each do |value1|
    value1.find do |key2, value2|
      if value2 == "cool"
        container << value1
      end
    end
  end
  container
end

def organize_schools(hash)
  new_hash = {}
  hash.each do |key1, value1|
    value1.each do |key2, value2|
      new_array = []
      hash.each do |key3, value3|
        value3.each do |key4, value4|
          if value4 == value2
            new_array << key3
            new_hash[value2] = new_array
          end
        end
      end
    end
  end
  new_hash
end