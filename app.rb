require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/process_roll") do
  @num_dice = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i

  @dice = Array.new(@num_dice) {rand(1..@num_sides)}
  @sum = @dice.sum

  @outcome = "You rolled a total of #{@sum}."

  erb(:flexible)
end

# get("/dice/:die1/:die2") do
#   @num_dice = params.fetch("die1").to_i
#   @num_side = params.fetch("die2").to_i

#   @dice = Array.new(@num_die1) {rand(1..@num_die2)}
#   @sum = @dice.sum

#   @outcome = "You rolled a total of #{@sum}."

#   erb(:flexible)
# end
