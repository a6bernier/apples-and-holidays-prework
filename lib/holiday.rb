require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  def all_winter_holiday_supplies(holiday_hash)
    supply_array = []
    holiday_hash[:winter].each do |holiday, supplies|
      supply_array << supplies
    end
  supply_array.flatten
  end

  def all_supplies_in_holidays(holiday_hash)

    holiday_hash.each do |key, value|
      season = key.to_s
      puts season.capitalize + ":"

      value.each do |key2, value2|
        holiday = key2.to_s
        holiday_split = holiday.split("_")
        holiday_list =[]

        holiday_split.each do |word|
          holiday_list << word.capitalize
        end

        supplies = value2.join(", ")

        puts "  " + holiday_list.join(" ") + ": " + supplies
      end

    end

  end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
