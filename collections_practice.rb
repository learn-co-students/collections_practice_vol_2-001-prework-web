require 'pry'

def test_s
  ["roadhouse", "swimming", "candy", "candy", "scope", "green", "water", "waste"]
end

def test_i
  [1,2,3,4,5,6,7]
end

def test_m
  ["chocolate", "snowman", 6, "fry", 78, "soda", 8, 81]
end

def test_h
  [{name: "blake"}, {name: "blake"}, {name: "ashley"}]
end

def m1
 [
           {
            :first_name => "blake"
        },
           {
            :first_name => "ashley"
        },
          {
            :first_name => "ralph"
          }
    ]
end

def m2
  [
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
            },
            "ralph" => {
                :awesomeness => 2,
                     :height => 40,
                  :last_name => "ralpherson"
            }
        }
    ]
  
end

def cool
  [
            {
                   :name => "ashley",
            :temperature => "sort of cool"
        },
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]
end

def skool
  {
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
end




def begins_with_r(array) #pretty elegant
  array.all? {|x| x.downcase.start_with?("r")}
end

def contain_a(array)
  new_array = []
  array.each do |x|
    if x.include?("a") == true
      new_array.push(x)
    end
  end
  new_array
end

def first_wa(array)
  annoying = []
  array.each {|x| annoying << x.to_s}
  annoying.find do |y|
     y.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array) # This really sucked
  array.uniq.collect do |x| 
    x[:count] = array.count(x)
  end
  array.delete_if {|x| x.length < 2} #checks for an array that is not unique
end                                  #it returns as a 1 item array, if not unique

def counts_one_line(array)
  array.each_with_object(hello = Hash.new(0)) {|x, counts| counts[x] += 1}
  hello
end

def test(array) # one way to do the counting thing without a hash.
  array.uniq.each do |x|
    puts " #{x} #{array.count(x)}"
    end
end

def merge_data(a, a2)
  butts = [] # Don't care that the array is 'butts' this was a REALLY hard method
  a2.collect do |x| #It has taken me from when I began to December 14th.
    x.each do |k,v|
      a.each do |y|
        y.each do |pre, name|
          if k == name
            butts << y.merge(v)
          end
        end
      end
    end
  end
  butts 
end


def find_cool(array) #This method by comparison took me six minutes
  sol = []
  array.each do |x|
    x.each do |k,v|
      if v == "cool"
        sol << x
      end
    end
  end
  sol #why does everything have to be in an array?
end

def organize_schools(array)
  mmm = []
  hhh = {}
  array.each do |name, loc_hash|
    mmm << loc_hash.values
    
  end
  mmm.uniq.flatten.sort.each do |x|
    hhh[x] = []
    end
  array.each do |name,loc_hash|
    loc_hash.each do |i, place| #place and city are the same
    hhh.each do |city, school|
      if city == place
        school << name
        end
      end
    end
  end
  hhh
end






















