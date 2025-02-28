
require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash.each do |season, holiday|
    if season == :summer
    holiday.each do |holiday, decorations|
      if holiday == :fourth_of_july
      decorations.each do |index|
        if index == decorations[1]
          return index
        end
      end
    end
  end
end
end
        
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, decoration|
        decoration << supply
      end
    end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, decoration|
        decoration << supply
end
end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
 holiday_hash.each do |time, holiday|
   if time == season 
     holiday_hash[season] = {holiday_name => supply_array}
     holiday_hash
   end
 end
 end

def all_winter_holiday_supplies(holiday_hash)
  new = []
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].collect do |holiday, supplies|
new << supplies
end
new.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supply|
      puts "  #{holiday.to_s.split("_").collect{|x| x.capitalize}.join(" ")}: #{supply.join(", ")}"
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
 new_arr = []
  holiday_hash. each do |season, holiday|
    holiday.each do |holiday_name, supply|
      if supply.include?("BBQ")
        new_arr << holiday_name
      end 
    end 
  end 
  new_arr
end







