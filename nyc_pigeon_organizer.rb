require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attributes, hash|
    hash.each do |attribute, names|
      names.each do |name|
        new_hash[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end
  data.each do |attribute, hash|
    hash.each do |value, arr_of_names|
      new_hash.each do |name, empty|
        if arr_of_names.include?(name)
          new_hash[name][attribute].push(value.to_s)
        end 
      end
    end 
  end
  new_hash
end


















nyc_pigeon_organizer({
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
})