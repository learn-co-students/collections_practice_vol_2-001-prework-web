def begins_with_r(array)
  bool = true
  array.each do |str|
    if str.chars.first != "r"
        bool = false
    end
  end
  bool
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end


def first_wa(array)
  array.select{ |word| word.to_s.start_with?("wa")}.first
end

def remove_non_strings(array)
  array.select do |word|
    if word.class == String
        word
    end
  end
end

def count_elements(array)
    
    nameArray = []
    nameHash = {}
    
    array.each do |hash|
        name = hash[:name]
        nameHash[name] ||= 0
        nameHash[name] += 1
    end
    
    nameHash.each do |name, count|
        superHash = {}
        superHash[:name] = name
        superHash[:count] = count
        nameArray << superHash
    end
    nameArray
end


def merge_data(keys, data)
    
    mergedHashArray = []
    
    data.each do |dataHashes|
        dataHashes.each do |name, data|
            mergedHash = {}
            mergedHash[:first_name] = name
            mergedHash = mergedHash.merge(data)
            mergedHashArray << mergedHash
        end
    end
    mergedHashArray
end

def find_cool(hash)
    
    coolHashArray = []
    
    hash.each do |hashes|
        if hashes.values.include?("cool")
            coolHashArray << hashes
        end
    end
    coolHashArray
end

def organize_schools(hash)
    
    orgSchool = {}
    
    hash.each do |school, locationHash|
        locationHash.each do |label, location|
            orgSchool[location] ||= []
            orgSchool[location] << school
        end
    end
    orgSchool
end
