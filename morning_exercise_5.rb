
class NightShift

def count_names
  names = ["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"]

  night_shifts = names.group_by do |name|
    name[0]
    end
end
end

puts NightShift.new.count_names

  
