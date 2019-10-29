def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
 puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input_var = gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!" 
end

def initial_round
 temp_total = deal_card + deal_card
 display_card_total(temp_total)
 temp_total
end

def hit?(number)
  prompt_user
  temp_var = get_user_input
  if temp_var == 'h' 
    number += deal_card
    number
  elsif temp_var == 's'
    number
  else 
    invalid_command
    hit?(number)
  end
  number
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
