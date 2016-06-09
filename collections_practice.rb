def begins_with_r(collection)
  counter=0
  new_collection=[]
  while counter<collection.length
    if collection[counter].start_with?"r"
      new_collection<<true
    else
      new_collection<<false
    end
    counter+=1
  end
  if new_collection.include?false
    return false
  else
    return true
  end
end

def contain_a(collection)
  counter=0
  new_collection=[]
  while (counter < collection.size)
    out= collection[counter]
    if out.include?("a")
      new_collection<<out
    end
    counter+=1
  end
  return new_collection
end


def first_wa(collection)
  counter=0
  new_collection=[]
  while (counter < collection.length)
    part=collection[counter]
    if part.include?"wa"
      new_collection<<part
      return new_collection[0]
    else
      collection.delete(part)
    end
    counter+=1
  end
end

def remove_non_strings(collection)
  new_collection=[]
  counter=0
  while(counter< collection.size)
    out=collection[counter]
    if out.class==String
      new_collection<<out
    end
    counter+=1
  end
  return new_collection
end

def count_elements(collection)
  counter=0
  collection_uniq=collection.uniq
  newLength=collection_uniq.length
  count_collection=[]
  while counter < newLength
    if collection.include?(collection_uniq[counter])
      count_collection.push({:name=>collection_uniq[counter].values[0],:count=>collection.count(collection_uniq[counter])})
    end
    counter+=1
  end
  return (count_collection)
end
 
 def merge_data(keys , data)
    merge=[]
    counter=0
    while(counter<keys.length)
     merge.push(keys[counter].merge(data[0].values[counter]))
     counter+=1
   end
   return merge
  end

  def find_cool(collection)
    counter=0
    new_stuff=[]
    newLength=collection.length
    while counter<collection.length
      if collection[counter].values[counter]=="cool"
        new_stuff.push(collection[counter])
      end
      counter+=1
    end
    return new_stuff
  end

def organize_schools(schools)
  counter=0
  n_counter=0
  nyc=[]
  sf=[]
  chicago=[]
  cities=[]
  new_hash={}
  while counter<schools.size
    if schools.values[counter].values[0]=="NYC"
      nyc.push(schools.keys[counter])
    elsif schools.values[counter].values[0]=="SF"
      sf.push(schools.keys[counter])
    elsif schools.values[counter].values[0]=="Chicago"
      chicago.push(schools.keys[counter])
    end
    cities.push(schools.values[counter].values[0])
   counter+=1
   end
   cities_uniq=cities.uniq
   schools=[nyc,sf,chicago]
   while n_counter<cities_uniq.length
     new_hash.merge!(cities_uniq[n_counter]=>schools[n_counter])
     n_counter+=1
   end
 return new_hash
end





