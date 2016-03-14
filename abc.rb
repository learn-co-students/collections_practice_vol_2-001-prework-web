abc={
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


ttt=
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

=begin
let(:organized_schools) {
    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}
  }
=end






def first_wa(abc)
  azz=[]
  abc.select do |i|
    azz=i if i.to_s.include?("wa")

#    break
  end
  print azz
end
=begin
def xyz(abc)
  azz=[]
  abc.each do |i|
    azz= i if i.to_s.include?("wa")

    break if azz.size>0
  end
  print azz
end
=end



#=begin
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
  #puts xyz.size
  print xyz
end
#=end


=begin
  abc.each do|i|
    puts "1"
    if xyz[z][:name]==i[:name]

    xyz.each do|g|
      puts "2"
      if g.has_value?(i[:name])==false
        puts "3"
        g[:name]=i[:name]
      else
        puts "4"
        g[:count]=g[:count]+1
      end
    end
  end
  print xyz.size
  #return xyz
end
=end

#count_elements(abc)









#puts abc[0][:name]
#puts xyz.class
#xyz=Hash.new(abc[0])
#puts abc[0]
#puts xyz[0][:name]
#xyz[0][count:1]

#xyz[:count]=1
#puts xyz.class
#puts xyz
=begin
abc.each do |key, array|
  puts "#{key}-----"
  puts array
end
=end
  #puts abc
#puts xyz
#puts abc

#=begin
#abc[0][:count]=1
#puts abc[0]
#abc[0][:count]+=1
#puts abc[0]
#xyz=abc
#puts xyz
#puts xyz.size
#puts xyz.length
#xyz[0][:count]=1
#puts xyz
#xyz=Array.new
#xyz=abc[0]
#print xyz
=begin
xyz=Array.new
xyz[0]=abc[0]
print xyz
print xyz.class
xyz[1]=abc[1]
print xyz
=end
#print zzz.size
#print kkk
#puts kkk&zzz
#kkk.concat(zzz)
#print kkk("blake")
#ttt=Hash.new(kkk)
#print ttt
##print ttt

#abc.each{|i|puts i.values}
#Qputs abc.values
#Qputs abc.keys

=begin
xyz=Hash.new
abc.select do|i|
  if i.key.include?(xyz.key)=false
    xyz.key=i.key

=end

#puts abc.each{|i| puts i.values}
#puts abc.values













=begin
xyz=Hash.new
abc.values do |i|
  puts i
  i do |g|
    puts g.values
  end
  #puts i
end
=end

#abc.values{|i| puts i.values
=begin
puts abc.values
puts abc.values[0]
puts abc.values[0].values
=end

#abc.values{|i| puts i}

#puts abc.values[0].values
=begin
xyz={}
i=0
z=0
while i<abc.size do
  #if xyz.include?(abc.values[i].values)==false
  #  xyz[abc.values[i].values]=abc.keys[i]
   # z+=1
  #end

  #xyz=(abc.values[i].values,abc.keys[i])
  #zzz=abc.values[i].values.join()
  puts "1"
  #if xyz.keys.include?(abc.keys[i].lines.to_a)
  if xyz.has_key?(abc.values[i].values.join())
    #xyz{abc.values[i].values.join()}<<abc.keys[i].lines.to_a
    puts xyz[abc.values[i].values.join()].push(abc.keys[i])
    puts "2"
  else
    #xyz[i]={abc.values[i].values.join() => abc.keys[i].lines.to_a}
    #if xyz[abc.values[i].values.join()].include?

    xyz[abc.values[i].values.join()]=abc.keys[i].lines.to_a
    puts "3"
  end
    #xyz.add{abc.values[i].values => abc.keys[i]}
  i+=1
end
puts xyz



#puts xyz.flatten

#puts.xyz["NYC"]

=end



#xyz={"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],"SF"=>["dev boot camp", "Hack Reactor"],"Chicago"=>["dev boot camp chicago"]}


#xyz={}
#xyz={"abc" => "abc.keys[i]"}
#print xyz
#puts xyz["NYC"].push("aaaaaaaaaaaaaa")

#print xyz


#def find_cool(abc)



ttt.each do |i|
  if i[:temperature]=="cool"
    print i


  end
end


def find_cool(abc)
  i=0
  while i<abc.size
    if abc[i][:temperature]=="cool"
      abc[i]
    end
    i+=1
  end
end



#find_cool(ttt)
#puts ttt[0]
#puts ttt[1]
#find_cool(ttt)


#=begin
def find_cool(abc)
  xyz=[]

  abc.each do |i|
    if i[:temperature]=="cool"
      print i
      xyz=i
    end
  end

  #print xyz
end
#=end
print ttt[0]
puts ""
puts ""
print ttt[1]
puts ""
puts ""
print ttt
puts ""
puts ""
puts ttt[1].class
find_cool(ttt)