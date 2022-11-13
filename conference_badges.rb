require "pry"

# Write your code here.

def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator arr
  badges = []
  arr.map do |name|
    badges <<   "Hello, my name is #{name}."
    # binding.pry
  end
  badges
end
# batch_badge_creator ["eva", "nick"]

def assign_rooms speakers
  speakers.map.with_index(1) do |speaker, index|
    "Hello, #{speaker}! You'll be assigned to room #{index}!"
  end
end

def assign_rooms_2 speakers    
  assignments = []
    i = 1
    for speaker in speakers do
      assignments << "Hello, #{speaker}! You'll be assigned to room #{i}!"
      # binding.pry
      i += 1
    end
  assignments
end
# assign_rooms ["eva", "nick"]

def printer speakers

  batch_badge_creator(speakers).each do |badge|
    puts badge
  end

  assign_rooms(speakers).each do |room|
    puts room
    # binding.pry
  end
end

# printer ["eva", "nick"]
