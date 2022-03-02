# Easy - Chat Room Status
#
# Write a function that returns the number of users in a chatroom based on the following rules:
#
# - If there is no one, return "no one online".
# - If there is 1 person, return "user1 online".
# - If there are 2 people, return "user1 and user2 online".
# - If there are n>2 people, return the first two names and add "and n-2 more online".
#
# For example, if there are 5 users, return:
#
# - user1, user2 and 3 more online"
#
# Examples
# - chatroom_status([]) ➞ "no one online"
# - chatroom_status(["paRIE_to"]) ➞ "paRIE_to online"
# - chatroom_status(["s234f", "mailbox2"]) ➞ "s234f and mailbox2 online"
# - chatroom_status(["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"]) ➞ "pap_ier44, townieBOY and 4 more online"

def chatroom_status(users)

  case
  when users.length == 1
    %(#{users[0]} online)
  when users.length == 2
    %(#{users[0]} and #{users[1]} online)
  when users.length > 2
    more_users = []
    more_users.replace(users)
    more_users.shift(2)
    %(#{users[0]}, #{users[1]} and #{more_users.length} more online)
  else
    %(no one online)
  end

end

puts chatroom_status([]) == "no one online"
puts chatroom_status(["becky325"]) == "becky325 online"
puts chatroom_status(["becky325", "malcolm888"]) == "becky325 and malcolm888 online"
puts chatroom_status(["becky325", "malcolm888", "fah32fa"]) == "becky325, malcolm888 and 1 more online"
puts chatroom_status(["paRIE_to"]) == "paRIE_to online"
puts chatroom_status(["s234f", "mailbox2"]) == "s234f and mailbox2 online"
puts chatroom_status(["pap_ier44", "townieBOY", "panda321", "motor_bike5", "sandwichmaker833", "violinist91"]) == "pap_ier44, townieBOY and 4 more online"
