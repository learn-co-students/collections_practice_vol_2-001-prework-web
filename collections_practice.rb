require "pry"

# your code goes here
def begins_with_r(arr)
  arr.all? { |i| i.to_s.start_with?("r") }
end

def contain_a(arr)
  arr.find_all { |i| i.to_s.include?("a") }
end

def first_wa(arr)
  arr.find { |i| i.to_s.include?("wa") }
end

def remove_non_strings(arr)
  arr.delete_if { |i| i.class != String }
end

def count_elements(arr)
#   arr.count(i)
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key|
    key.each do |name_key, name_value|
      data.each do |persons|
        persons.each do |person_key, person_value|
          if name_value == person_key
            merged_data.push(key.merge(person_value))
          end
        end
      end
    end
  end
  merged_data
end

def find_cool(cool)
  cool.select { |i| i.has_value?("cool") }
end
