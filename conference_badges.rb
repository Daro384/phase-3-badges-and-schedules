def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator array
    array.map {|name| badge_maker name}
end

def assign_rooms array
    array.map {|name| "Hello, #{name}! You'll be assigned to room #{array.index(name) + 1}!"}
end

def printer array
    batch_badge_creator(array).each {|badge| puts badge}
    assign_rooms(array).each {|room| puts room}
end