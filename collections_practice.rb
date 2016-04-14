# your code goes here
def begins_with_r (array)
  array.all? {|x| x.start_with?("r")}
end

def contain_a (array)
  array.select {|x| x.include?("a")}
end

def first_wa (array)
  array.find {|x| x.kind_of?(String) && x.start_with?("wa")}
end


def remove_non_strings (array)
  array.delete_if {|x| !x.kind_of?(String)}
end

def count_elements (array)
  h = Hash.new(0)
  array.each {|x| h[x] += 1}
  h.keys.map{|k| k[:count] = h[k]; k}  
end


# [{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]

# keys
# [{:first_name=>"blake"}, {:first_name=>"ashley"}]

# data 
#     [{"blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson"}, "ashley" => {:awesomeness => 9, :height => 60, :last_name => "dubs"}}]
  




def merge_data(keys, data)
  
  temp_f = {}
  temp_s = {}
  keys.each_with_index do |x, index|
  
    
    x.each do |k,v| 
      
      
      
      data.each do |y|
        y[v].each do|key, value|
        
          if index == 0 
            temp_f[k] = v
            temp_f[key] = value
          else
            temp_s[k] = v
            temp_s[key] = value
          end 
            
        end 
        
        
      end   
    end 
    
    
  end

  
  merged_data = [temp_f, temp_s]
end



def find_cool(array)

  answer = []
  array.each do |x|
    x.each do |key, value|
      if value == "cool"
       answer << x
      end
    end
  end
answer
end





def organize_schools (schools)

  organized = {}
    schools.each do |name,v|
      v.each do |location, value|
        organized[value] = []
      end
    end
  
  organized.each do |key,value|
    schools.each do |name,v|
      v.each do |location, city|
        if key == city
          organized[key].push(name)
        end
      end
    end
  end
       
organized
end
