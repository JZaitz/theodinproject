puts "********************************"
puts "Welcome to the Game of Stones!!"
puts "A logic and strategy game."
puts "Each player will choose between 1-3 stones to remove at a time fro the starting amount of 10 stones."
puts "The first player to get to zero will lose the game. Good luck!"
puts "********************************"

stones = 10
players = []

2.times do |i|
  puts "Player #{i + 1} please enter your name."
  players << gets.chomp
end

players.cycle do |player|
  puts "The current number of stones is: #{stones}"
  puts "Player #{player}, it is your turn now."

  number = 0

  loop do
    number = gets.to_i
    if number.between?(1, 3) && number <= stones
      break
    else
      puts "Please enter the correct number!"
    end
  end

  stones -= number

  if stones <= 0
    puts "Player #{player} lost!"
    break
  end

end
