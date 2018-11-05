keys = [{:first_name => "blake"}, {:first_name => "ashley"}]

data = { "blake" => {:awesomeness => 10,
                         :height => "74",
                         :last_name => "johnson"},
         "ashley" => {:awesomeness => 9,
                      :height => 60,
                      :last_name => "dubs"}
       }


def merge_data(keys, data)
  array=Array.new 
  data.collect do |data_item| 
    data_item.each do |key1, value1| #key1 = "blake" , value1 = { ...  }
      keys.each do |key| #key = {:first_name => "blake"}
        key.each do |key2, value2|
          if key1 == value2 
            array << key.merge(value1)
          end
        end
      end
    end
  end
  array
end

def merge_data(keys, data)
array=Array.new
  keys.collect do |keys_item|
    keys_item.each do |key1, value1|
      data.collect do |key2, value2|
        if value1 == key2
          data[key2][key1] = value1 
        end
        array<<data[key2]
      end
    end
  end
  array.uniq
end


[{:awesomeness=>10, :height=>"74", :last_name=>"johnson", :first_name=>"blake"}, 
{:awesomeness=>9, :height=>60, :last_name=>"dubs", :first_name=>"ashley"}, 
{:awesomeness=>10, :height=>"74", :last_name=>"johnson", :first_name=>"blake"}, 
{:awesomeness=>9, :height=>60, :last_name=>"dubs", :first_name=>"ashley"}] 

new_hash = data["blake"]

new_hash[:first_name] = "blake"
new_hash

expected: 
[{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, 
{:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]


[key,data[key.values]]

bootcamps = {
      "flatiron school bk" => {:location => "NYC"}, 
      "flatiron school" => {:location => "NYC"}, 
      "dev boot camp" => {:location => "SF"},
      "dev boot camp chicago" => {:location => "Chicago"},
      "general assembly" => {:location => "NYC"},
      "Hack Reactor" => {:location => "SF"}
    }

expected = {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}

def organize_schools(bootcamps)
  sorted_schools = Hash.new
  bootcamps.each do |school, info|
    info.each do |location, city|
      if sorted_schools.has_key?(city)
        sorted_schools[city]<<school
      else
        sorted_schools[city] = school
    end
  end
  sorted_schools
end

def organize_schools(schools)
+    organized_schools ={}
+    schools.each do |school_name,location_hash|
+        if organized_schools.has_key?(location_hash[:location])
+            organized_schools[location_hash[:location]] << school_name
+        else
+            organized_schools[location_hash[:location]] = [school_name]
+        end
+    end
+    organized_schools
+end

+def organize_schools(schools)
+  sorted_schools = {}
+  schools.each do |school, location|
+    location.each do |key, city|
+      if sorted_schools.has_key?(city)
+        sorted_schools[city] << school
+      else
+        sorted_schools[city] = [school]
+      end
+    end
+  end
+  return sorted_schools
+end 

