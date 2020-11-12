def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  card_total = a + b
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card_total += deal_card
  elsif user_input != 's'
    invalid_command
    hit?(card_total)
  else 
    return card_total
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_sum = 0
  until card_sum > 21
    welcome 
    card_sum = initial_round
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
end
    
