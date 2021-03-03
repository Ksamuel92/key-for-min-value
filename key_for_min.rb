# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
    if name_hash.size == 0     #if empty hash is passed through, return nil
        nil
    end
    min_key, min_value = name_hash.first
    
     name_hash.each do |key, value|
        if value < min_value #if value of iterated hash is less than the first
            min_key = key    #then min_key becomes that key
        end
    end
    min_key
end