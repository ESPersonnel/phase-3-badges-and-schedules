# Write your code here.

# Create a #badge_maker method
# You're hosting a conference and need to print badges for the speakers. Each badge should read: "Hello, my name is _____." Write a badge_maker method that, when provided a person's name, will create and return this message. E.g.:

# badge_maker("Arel")
# # => "Hello, my name is Arel."
# Create a #batch_badge_creator method
# Once the list of speakers for your conference has been finalized, you'll want to get the badges printed for all of your speakers.

# Write a #batch_badge_creator method that takes an array of names as an argument and returns an array of badge messages.

# batch_badge_creator(["Arel", "Carol"])
# # => ["Hello, my name is Arel.", "Hello, my name is Carol."]
# Create an #assign_rooms method
# You just realized that you also need to give each speaker a room assignment. Write a method called #assign_rooms that takes the list of speakers and assigns each speaker to a room. Make sure that each room only has one speaker.

# You have rooms 1-7.

# Return an array of strings representing room assignments in the form of: "Hello, _____! You'll be assigned to room _____!"

# assign_rooms(["Arel", "Carol"])
# # => ["Hello, Arel! You'll be assigned to room 1!", "Hello, Carol! You'll be assigned to room 2!"]
# Hint: Think about how you will assign a room number to each person. Array items are indexed, meaning that you can access each element by its index number. When you are iterating through an array, you can keep track of the index number of the current iteration using an enumerator method called each_with_index (Links to an external site.) or a closely related method called .with_index (Links to an external site.).

# Hint: Remember that the return value of the #each (or #each_with_index) method is the original array that you are calling it on. What we need to do here is iterate through the array containing the list of speakers, create the room assignment strings for each speaker, and return a new array containing the messages. There is an enumerator method that does just that. Google or use Ruby Docs (Links to an external site.) to find the correct method.

# Create a #printer method
# Now you have to tell the printer what to print. Create a method called #printer that will output first the results of the #batch_badge_creator method, and then the output of the #assign_rooms method, to the screen.

# printer(["Arel", "Carol"])
# # Hello, my name is Arel.
# # Hello, my name is Carol.
# # Hello, Arel! You'll be assigned to room 1!
# # Hello, Carol! You'll be assigned to room 2!
# Hint: Remember that methods can call other methods. If the return value of #assign_rooms is an array of room assignments, how can you print out each assignment? You'll need to iterate over your array of room assignments in order to puts out each individual assignment.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.map { |name| badge_maker(name) }
end

def assign_rooms(array)
  array.map.with_index { |name, index| "Hello, #{name}! You'll be assigned to room #{index + 1}!" }
end

def printer(array)
  batch_badge_creator(array).each { |badge| puts badge }
  assign_rooms(array).each { |room| puts room }
end

