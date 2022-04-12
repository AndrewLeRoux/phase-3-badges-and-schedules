def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(arr)
    arr.map do |name| 
        badge_maker(name)
    end
end


def assign_rooms(arr)
    arr.each_with_index do |name, index| 
        arr[index] = "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
end

def printer(arr)
    batch_arr = batch_badge_creator(arr)
    batch_arr.each do |statement|
        puts statement
    end
    room = assign_rooms(arr)
    room.each do |statement|
        puts statement
    end
end

p badge_maker("Arel")
p batch_badge_creator(["Arel", "Carol"])
p assign_rooms(["Arel", "Carol"])
