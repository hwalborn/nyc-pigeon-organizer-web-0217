require 'pry'

def nyc_pigeon_organizer(data)
  name_hash = {}
  data.each {|description, attribute|
    attribute.each {|k, v|
      v.each {|name|
        if !(name_hash.has_key?(name))
          name_hash[name] = {}
        end
        if name_hash[name].has_key?(description)
          name_hash[name][description] << k.to_s
        else
          name_hash[name][description] = []
          name_hash[name][description] << k.to_s
        end
      }
    }
  }
  name_hash
end
