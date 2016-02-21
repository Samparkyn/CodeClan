# 1. For a given person, return their favourite tv show
def fav_tv_show(person)
return person[:favourites][:tv_show]
end
# 2. For a given person, check if they like a particular food
def like_food?(food, person)
  person[:favourites][:things_to_eat].include?(food)
end

# 3. Allow a new friend to be added to a given person

def new_friend(person, new_friend)
  return person[:friends] << new_friend
end
# 4. Allow a friend to be removed from a given person

def delete_friend(person, delete_friend)
  person[:friends].delete("Rick")
  return  person[:friends]
end
# 5. Find the total of everyone's money

def money_total(people)
  count = 0
  people.each do |person|
    count += person[:monies]                                   
end
return count
end
# 6. For two given people, allow the first person to loan a given value of money to the other

def loan_money(person_lending, person_receiving, loan)
  person_lending[:monies] -= loan
  person_receiving[:monies] += loan
end
# 7. Find the set of everyone's favourite food joined together

def all_fav_foods(people)
  fav_foods = []
  for person in people
    fav_foods.concat(person[:favourites][:things_to_eat])
end
return fav_foods
end
# 8. Find people with no friends

def no_friends(people)
  result = []
  for person in people
    result << person if person[:friends].empty?
end
return result
end








