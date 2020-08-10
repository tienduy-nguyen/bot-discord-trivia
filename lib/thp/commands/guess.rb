 

THP_BOT.message(start_with: "#{THP_BOT.prefix}guess") do |event|
  # Pick a number between 1 and 10
  magic = rand(1..10)
  event.user.await(:guess) do |guess_event|
    guess = guess_event.message.content.to_i
    if guess == magic
      guess_event.respond 'you win!'
    else
      guess_event.respond(guess > magic ? 'too high' : 'too low')
      false
    end
  end

  event.respond '**Guess a number between 1 and 10..**'
end

THP_BOT.run


