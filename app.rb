require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/results") do
  @num_to_square = params.fetch("to-square").to_i
  @square = @num_to_square ** 2

  erb(:square_results)
end
get("/square/new") do

  erb(:square)
end

get("/square_root/results") do
  @num_to_square_root = params.fetch("to-square-root").to_i
  @root = @num_to_square_root ** (1.0 / 2)
  
  erb(:square_root_results)
end

get("/square_root/new") do

  erb(:square_root)

end


get("/random/new") do

erb(:random)

end
get("/random/results") do

  @min = params.fetch("min").to_i
  @max = params.fetch("max").to_i
  @result = rand(@min..@max)

  erb(:random_results)
end

get("/payment/new") do
  @apr = params.fetch("apr").to_i
  @n = params.fetch("remaining").to_i
  @pv = params.fetch("pv").to_i

  @payment = @apr * @pv / (1 - (1 + @apr) ^ -@n)

  erb(:payment)
end
