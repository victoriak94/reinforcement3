
transit_information = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

# 1. Save the direction of train 111 into a variable

train_111_direction = transit_information[-1][:direction]
puts train_111_direction

# 2. Save the direction of train 80B into a variable

train_80B_frequency = transit_information[-3][:frequency_in_minutes]
puts train_80B_frequency

# 3. Save the direction of train 610 into a variable

train_610_direction = transit_information[2][:direction]
puts train_610_direction

# 4. Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.

def get_north_trains(array)
  trains_north = []
  array.each do |item|
    if item[:direction] == "north"
      trains_north.push item[:train]
    end
  end
  return trains_north
end

puts get_north_trains(transit_information)

# 5. Do the same thing for trains that travel east.

def get_east_trains(array)
  trains_east = []
  array.each do |item|
    if item[:direction] == "east"
      trains_east.push item[:train]
    end
  end
  return trains_east
end

puts get_east_trains(transit_information)


# 6. You probaby just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.

def get_trains(direction)
  
