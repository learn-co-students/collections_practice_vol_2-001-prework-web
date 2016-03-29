def begins_with_r(entry)
entry.all?  {|x| x[0] =="r"}
end

def contain_a(entry)
 entry.select {|x| x.include?("a")}
end

def first_wa(entry)
  entry.find {|x| x[0,2]=="wa"}
end

def remove_non_strings(entry)
  entry.delete_if {|x| x.class != String}
end

def count_elements(entry)
   entry1 = entry.uniq
   entry1.each {|x|
    x[:count] = entry.count(x)}
 end

def merge_data(entry, entry2)
  entry.collect {|x| x.merge(entry2[0][x[:first_name]])}
end

def find_cool(entry)
  entry.find_all {|x| x[:temperature]=="cool"}
end


def organize_schools(entry)
  final={}
  entry.each do |school, place|
    if final.keys.include?(place[:location])
      final[place[:location]]<<school
    else
      final[place[:location]]= [school]
    end
  end
  final
end
 