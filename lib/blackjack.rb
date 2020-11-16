def welcome
   puts "Welcome to the Blackjack Table"

 end
def deal_card
  
   card = rand(1..11)
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
   
   card1 = deal_card
   card2 = deal_card
   sum = card1 + card2
   display_card_total(sum)
   p sum
 end
 
 
 def hit?(number)
   prompt_user
   input1 = get_user_input
   if input1 == 's'
     return number
   elsif input1 == 'h'
     input2 = deal_card
     return number+input2
   else
     invalid_command
     prompt_user
     return get_user_input
   end
 end
   
   def invalid_command
  
   puts "Please enter a valid command"
 end
 
 def runner
   
   welcome
   number = initial_round
   until number > 21 do
   total = hit?(number)
   display_card_total(total)
   number= total
   end

   end_game(number)
   # binding.pry

 end
 