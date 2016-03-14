
def begins_with_r(abc)
  abc[-1].to_s[0]=="r" ? (return true):(return false)
end


def contain_a(abc)
  abc.select{|i| i.include?("a")}
end

def first_wa(abc)

  azz=[]
  abc.each do |i|
    azz= i if i.to_s.include?("wa")

    break if azz.size>0
  end
  azz

end



def remove_non_strings(abc)
  abc.select do|i|
    i.class==String
  end
end

def count_elements(abc)
  z=0
  i=1
  xyz=Array.new()
  xyz[0]=abc[0]
  xyz[0][:count]=1
  while i<abc.size do
    if xyz[z][:name]==abc[i][:name]
      xyz[z][:count]+=1
      i+=1
    else
      z+=1
      xyz[z]=abc[i]
      xyz[z][:count]=1
      i+=1
    end
  end
  return xyz
end

def merge_data(keys, data)
  ttt=Array.new
  g=0
  keys.each do |i|
    if data[0].include?(i[:first_name])
      ttt[g]=i.merge(data[0][i[:first_name]])
      g+=1
    end
  end
  ttt
end










def organize_schools(abc)
  xyz={}
  i=0
  while i<abc.size do
    if xyz.has_key?(abc.values[i].values.join())
      puts xyz[abc.values[i].values.join()].push(abc.keys[i])
    else
      xyz[abc.values[i].values.join()]=abc.keys[i].lines.to_a
    end
    i+=1
  end
  return xyz
end

















def find_cool(abc)
  #xyz=Array.new
  #xyz=abc[1]
  #return xyz
  #return abc[0]
  #abc.each do |i|
   # if i[:temperature]=="cool"
    #  return abc[i]
    #end
  #end
  abc.select do |i|
    if i.values.equal?("cool")
      return i
    end
  end
end

def find_cool(abc)
  xyz=Array.new

  abc.collect do |i|
    if i[:temperature]=="cool"
      #print i
      xyz[0]=i
    end
  end

  return xyz
end



