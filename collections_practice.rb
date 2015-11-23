require 'pry'

# your code goes here
def begins_with_r(arg)
  array = []
  arg.each do |x|
    if x[0] == "r"
      array << x
    end
  end
  if array.count == arg.count 
    return true
  else
    return false
  end
end

def contain_a(arg)
  array = []
  arg.each do |x|
    if x.include?('a')
      array << x
    end
  end
  array
end

def first_wa(arg)
  arg.collect do |x|
    if x[0] == "w" && x[1] == 'a'
      return x
    end
  end
end


def remove_non_strings(arg)
  #code
  arg.delete_if do |x|
    x.class != String
  end
  arg
end



#got it to pass, but the end is kind of cheat-y
def count_elements(arg)
  name_cart = []
  new_arg = {}

  arg.each do |name_hash|
    name_hash[:count] = nil
    name_hash.each do |key, value|
      if key == :name
        name_cart << value
        #binding.pry
        name_hash[:count] = name_cart.count(value)
        #binding.pry
      end
    end
  end
  #binding.pry
  arg.shift
  arg
end



def merge_data(arg, arg_2)
  merged = []
  #binding.pry
  arg_2.each do |hash|
    hash.each do |name, data|
      arg.collect do |first_name_hash|
        #binding.pry
        if first_name_hash.values[0] == name
          first_name_hash = first_name_hash.merge(data)
          merged << first_name_hash
          #binding.pry
        end
        #binding.pry
      end
    end
  end
  merged
  #binding.pry
end


def find_cool(arg)
  cool_bros = []
  arg.collect do |hash|
    if hash[:temperature] == "cool"
      cool_bros << hash
    end
  end
  cool_bros
end


def organize_schools(arg)
  organized = {}
  arg.each do |school_name, school_data|
    school_data.each do |attribute, location|
      organized[location] = []
    end
  end
  arg.each do |school_name, school_data|
    school_data.each do |attribute, location|
      organized[location] << school_name
    end
  end
  organized
end


