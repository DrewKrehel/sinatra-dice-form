require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:die1/:die2") do
  @num_die1 = params.fetch("die1").to_i
  @num_die2 = params.fetch("die2").to_i

  @dice = Array.new(@num_die1) {rand(1..@num_die2)}
  @sum = @dice.sum

  @outcome = "You rolled a total of #{@sum}."

  erb(:flexible)
end
