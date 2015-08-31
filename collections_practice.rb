require 'pry'

def begins_with_r(array)
  answer = true
  array.each do |word|
    if word[0] != "r"
      answer = false
    end
  end
  answer
end


def contain_a(array)
  array.select do |word|
    word.include?("a")
  end    
end


def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end


def remove_non_strings(array)
  array.delete_if do |word|
    word.is_a?(String) == false
  end
end


def count_elements(array)
# input  [  {:name => "blake"},     {:name => "blake"},     {:name => "ashley"}  ]
# output [  {:name => "blake", :count=>2},       {:name => "ashley", :count=>1}  ]

  prelim_array = []
  prelim_key = 0
  counting_hash = Hash.new(0) 
  final_array = []
  final_array_key = 0
  array.each do |element|
    element.each do |key, value|
      prelim_array[prelim_key] = value
      prelim_key += 1
    end
  end
  prelim_array.each do |word|
    counting_hash[word] += 1    
  end
  counting_hash.each do |key, value|
    final_array[final_array_key] = {:name => key, :count => value}
    final_array_key += 1
  end
  final_array
end


def merge_data(keys, data)
# (:keys) [  { :first_name => "blake"  },
#            { :first_name => "ashley" }   ]
# 
# (:data) [  {"blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson"},
#             "ashley" => {:awesomeness => 9, :height => 60,   :last_name => "dubs"}  }      ]
# 
# (:merged_data) [  { :first_name => "blake"  , :awesomeness => 10, :height => "74", :last_name => "johnson"}  ,
#                   { :first_name => "ashley" , :awesomeness => 9, :height => 60, :last_name => "dubs" }      ]

# combine entry of 1st with values of 2nd
  keys.each do |name_hash|
    data.each do |element|
      element.each do |element_key, element_value|
        element_value.each do |attribute, result|
          if name_hash.value?(element_key)
            name_hash[attribute] = result
          end
        end  
      end
    end
  end
  keys
end


def find_cool(array)
  # (:cool) 
  #  [  { :name => "ashley", :temperature => "sort of cool"  },
  #     { :name => "blake",  :temperature => "cool"          }   ]
  cool_array = []
  array.each do |element_hash|
    element_hash.each do |key, value|
      if value == "cool"
        cool_array << element_hash
      end
    end    
  end
  cool_array
end


def organize_schools(hash)
  # {
  #  "flatiron school bk"    => { :location => "NYC"     },
  #  "flatiron school"       => { :location => "NYC"     },
  #  "dev boot camp"         => { :location => "SF"      },
  #  "dev boot camp chicago" => { :location => "Chicago" },
  #  "general assembly"      => { :location => "NYC"     },
  #  "Hack Reactor"          => { :location => "SF"      }
  #  }
  # expect: hash where keys are strings and values are arrays
  # {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}
  organized_hash = Hash.new()
  hash.each do |key_school, value_location|
    value_location.each_value do |city|
      organized_hash[city] = (organized_hash[city].to_a || '') << key_school
    end
  end
  organized_hash
end