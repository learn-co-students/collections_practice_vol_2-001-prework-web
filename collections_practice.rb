# your code goes here
def begins_with_r (array)
  result = true
  array.each do |x|
   if x[0,1] != "r"
      result = false
      break
   end
  end
  return result
end

def contain_a(array)
  array.find_all { |e| e.include?("a") }
end

def first_wa(array)
  array2  = array.find_all{|x| x.class == String}
  array2.find{|x| x.start_with?("wa")}
end

def remove_non_strings(array)
  array.find_all{|x| x.class == String}
end

def count_elements(array)
  array_uniq = array.uniq
  array_uniq.map{|e| {:name => e[:name], :count => array.count(e)} }
end

def merge_data(key, data)
 int = 0
 array = []
 key.each do |x|
  v = (x.values).join('')
  m = data[0][v]
  r = m.merge(x)
  array.push(r)
 end 
 return array
end

a = [
           {
            :first_name => "blake"
        },
           {
            :first_name => "ashley"
        }
    ]

b = [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]
  
def find_cool(cool)
  r =[] 
  cool.each do |x|
    x.each do |k, v|
      if v == "cool"
         r.push(x) 
      end
    end 
  end
  r
end

schools = {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
}

def organize_schools(schools)
    location = []
    (schools.values).each do |x|
        location.push(x.values.join(""))
    end
    location = location.uniq
    og_s = Hash[location.map{|key,value| [key,Array.new()]}] 


    location.each do |l|
       schools.each do |key, v|
         if ((v.values).join("")) == l
           og_s[l].push( key )
         end
       end
    end 
   og_s
end

