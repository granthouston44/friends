def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  person[:favourites][:snacks].include?(food)
end

def add_friend(person, name)
  person[:friends] << name
  person[:friends].length
end

def remove_a_name(person, name)
  person[:friends].delete(name)
  person[:friends].length
end

def total_money(people)
  money = 0
   for each_person in people
      money += each_person[:monies]
   end
   money
end


def lend_money(lender, borrower, amount)
  lender[:monies]-= amount
  borrower[:monies] += amount
end
