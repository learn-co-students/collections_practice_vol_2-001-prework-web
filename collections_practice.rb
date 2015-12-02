require 'pry'

#your code goes here
def begins_with_r(array)
  array.each do |x|
    return false unless x[0] == "r"
  end
  return true
end

def contain_a(array)
  result = []
  array.each do |x|
    if x.include?("a")
      result << x
    end
  end
  result
end

def first_wa(array)
  array.each do |x|
    if (x[0] == "w" && x[1] == "a")
      return x
    end
  end
end

def remove_non_strings(array)
  i = 0
  while i < array.length
    if array[i].class == String
      i += 1
    else
      array.delete_at(i)
    end
  end
  array
end

def count_elements(array)
  result = array.uniq
  result.each_with_index do |item, index_num|
    result[index_num][:count] = array.count(item)
  end
  result
end


  # binding.pry
  # checker=[]
  # result =[]
  # array.each do |item|
  #   binding.pry
  #   if !(checker.include?(item))
  #     checker << item
  #     binding.pry
  #     result << checker[-1]
  #     binding.pry
  #     result[-1][:count]=1
  #     binding.pry
  #   else
  #     result[result.index(item)][:count] += 1
  #   end
  # end
  # result

  def merge_data(collection1,collection2)
    collection1.each do |merge_to|
      merge_to.merge!(collection2[0][merge_to[:first_name]])
    end
    collection1
  end

  def find_cool(array)
    new_array =[]
    array.each do |item|
      if item[:temperature] == "cool"
        new_array << item
      end
    end
    new_array
  end

  def organize_schools(schools)
    new_hash ={}
    schools.each do |school_name,location_hash|
      if new_hash.has_key?(location_hash[:location])
        #then add school to array
        new_hash[location_hash[:location]] << school_name
      else
        #create the array and add the first school
        new_hash[location_hash[:location]] = [school_name]
      end
    end
    new_hash
  end
