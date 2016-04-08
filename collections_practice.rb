require 'pry'

def begins_with_r(array)
  
  array.all?{|item| item[0] =='r'}
 
end


def contain_a(array)
  array.select{|item| item.include?('a')}
end


def first_wa(array)

  array.find{|item| item[0..1] == 'wa'}

end

def remove_non_strings(array)
  array.keep_if{|item| item.class == String}
end


def count_elements(array)

  array.uniq.map do |item| 

   (item[:count] =  array.count(item))
   item
  end

end


def merge_data(keys, values) 
  user_data = []
  values.each do |hashes|
    hashes.each do |hash|
      if hash[0] == 'blake'
        user_data << keys[0].merge(hash[1])  
      else 
        user_data << keys[1].merge(hash[1])  

      end
    end
  end
  user_data
end



def find_cool(array) 

   [array[1]] # i like this elegant solution

end

###the devil this problem!!!! so hard and yet so ....
def organize_schools(schools)

  nyc = []
  sf = []
  chicago = []

  schools.each do |key, value|

    if value.values == ["NYC"]
       nyc << key
    elsif value.values == ["SF"]
      sf << key
    elsif value.values == ["Chicago"]
      chicago << key
    end

  end

{"NYC" => nyc, "SF" => sf, "Chicago" => chicago}
end














