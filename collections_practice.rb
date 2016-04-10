require "pry"
def begins_with_r(array)
    array.each do |element|
        if element.start_with?("r") != true
            return false
        end
        end
    true
end


def contain_a(array)
    collector = []
    array.each do |element|
         if element.include?("a")
                collector << element
         end
    end
    collector
end


def first_wa(array)
    array.find do |element|
        element[0..1] == "wa"
    end
end


def remove_non_strings(array)
    array.delete_if do |element|
        element.class != String
    end
end


def count_elements(array)
    collector = []
    array.uniq.each do |element|
        element[:count] = array.count(element)
        collector << element
    end
collector
end



def merge_data(keys, data)
    collector = []
    keys.each do |key|
        data.each do |element|
             element.each do |name, data_hash|
                 if name == key[:first_name]
                    collector << key.merge(data_hash)
                end
             end
         end
    end
    collector
end

def find_cool(collection)
    collector = []
    collection.each do |data_hash|
        if data_hash[:temperature] == "cool"
                collector << data_hash
        end
    end
    collector
end 


def organize_schools(schools_hash)
    collector_hash = {}
    nyc_collector = []
    sf_collector = []
    chicago_collector = []
    schools_hash.each do |school, location_hash|
        if location_hash[:location] == "NYC"
            nyc_collector << school
            collector_hash["NYC"] = nyc_collector
        elsif location_hash[:location] == "SF"
            sf_collector << school
            collector_hash["SF"] = sf_collector
        elsif location_hash[:location] == "Chicago"
            chicago_collector << school 
            collector_hash["Chicago"] = chicago_collector
        end
    end
    collector_hash
end
           
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
