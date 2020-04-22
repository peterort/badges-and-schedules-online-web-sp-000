# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(create)
  badge_messages = []
  create.each{|attendees| badge_messages << badge_maker(attendees)}
  badge_messages
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |speaker, index|
    room_assignments <<  "Hello, #{speaker}! You'll be assigned to room #{index +1}!"
  end
  room_assignments
end

def printer(attendees)
  attendees = []
  batch_badge_creator.each_with_index do |attendees, index|
    attendees << batch_badge_creator(attendees, index)
  end
  puts attendees

end
