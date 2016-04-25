VALID_CHOICES = %w(rock paper scissors lizard spock)
player_score = 0
pc_score = 0

def win?(first, second)
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'rock' && (second == 'lizard' || second == 'scissors')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
  # (first == 'scissors' && second == 'lizard') ||
  # (first == 'lizard' && second == 'paper') ||
  # (first == 'paper' && second == 'spock') ||
  # (first == 'spock' && second == 'rock') ||
  # (first == 'rock' && second == 'scissors')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won this round!")
  elsif win?(computer, player)
    prompt("Computer won this round!")
  else
    prompt("It's a tie!")
  end
end

# def score(player, computer)
#   if win?(player, computer)
#     player_score += 1
#   elsif win?(computer, player)
#     pc_score += 1
#   end
# end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def convert_letter(letter)
  case letter
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 's' then 'scissors'
  when 'l' then 'lizard'
  when 'v' then 'spock'
  end
end

prompt("Welcome the Rock Paper Scissors Lizard Spock!")

loop do
  choice = ''
  loop do
    choose_prompt = <<-MSG
      Choose your weapon!
        Type "r" for Rock
             "p" for Paper
             "s" for Scissors
             "l" for Lizard
          or "v" for Spock
    MSG
    prompt(choose_prompt)
    choice = convert_letter(Kernel.gets().chomp())

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice} Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  #  score(choice, computer_choice)
  if win?(choice, computer_choice)
    player_score = player_score + 1
  elsif win?(computer_choice, choice)
    pc_score = pc_score + 1
  end
  prompt("You: #{player_score} Computer: #{pc_score}")

  if player_score == 5
    prompt("You win the match!")
    break
  elsif pc_score == 5
    prompt("Computer wins the match!")
    break
  end

  prompt("Do you want to play another round?")
  answer = Kernel.gets().chomp()
  loop do
    break if %w(y n Y N).include?(answer)
    prompt("Choose Y for Yes or N for No")
    answer = Kernel.gets().chomp()
  end
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing!")
prompt("Good bye!")
