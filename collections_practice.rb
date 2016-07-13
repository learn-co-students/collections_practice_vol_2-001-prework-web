# your code goes here
#begins_with_r Return true if every element of the tools array starts with an "r" and false otherwise.
#begins_with_r should return false if there's an element that does not begin with r

def begins_with_r(array)
    array.all? { |word| word[0] == "r" }
    end

#contain_a return all elements that contain the letter 'a'
def contain_a(array)
    new_array = [ ]
    array.each do |word|
        if word.include?("a") == true
            then new_array << word
        end
    end
    new_array
end

#first_wa Return the first element that begins with the letters 'wa'
def first_wa(array)
    new_array = [ ]
    other_new_array = [ ]
    
    array.each do |word|
        new_array << word.to_s
    end
    new_array.each do |word|
        if word.include?("wa") == true
            then other_new_array << word
        end
        end
   other_new_array.first
end

#remove_non_strings remove anything that's not a string from an array
def remove_non_strings(array)
    array.delete_if {|word| word.to_s != word}
    end

#count_elements count how many times something appears in an array
# if count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])
#return [{:name=>"blake", :count=>2}, {:name=>"ashley", :count=>1}]
def count_elements(array)
    new_hash = { }
    new_array = [ ]
    newer_array = [ ]
    new_array = array.uniq
    new_array.each do |x|
        num = array.count(x)
        h2 = {:count => num}
        new_hash = x.merge(h2)
        newer_array << new_hash
    end
    newer_array
end

#merge_data combines two nested data structures into one
#array1 = array of hashes
#array 2 = an array of hashes, a hash inside a hash
#def merge_data([{:first_name => "blake"}, {:first_name => "ashley"}],
#[{"blake" => {:awesomeness => 10, :height => "74", :last_name => "johnson"}, {"ashley" => {:awesomeness => 9, :height => 60, :last_name => "dubs"}])
def merge_data(a1, a2)
    i = 0
    merged_data = [ ]
    while i < a1.length
        merged_data << a1[i].merge(a2.first.values[i])
        i = i + 1
        end
    merged_data
    end

#find_cool find all cool hashes
def find_cool(array)
    new_array = [ ]
    array.each do |x|
        if x.has_value?("cool") == true
            new_array << x
            return new_array
            end
        end
end
    

def organize_schools(schools)
    #  expected: {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot camp chicago"]}
    #schools.collect {|x| x.values("NYC")}
    nyc = schools.select {|k,v| v == {:location => "NYC"}}
    sf = schools.select {|k,v| v == {:location => "SF"}}
    chicago = schools.select {|k,v| v == {:location => "Chicago"}}
    return {"NYC" => nyc.keys, "SF" => sf.keys, "Chicago" => chicago.keys}
end


