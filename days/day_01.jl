using Printf

using RollingFunctions


path_data = "data/day_01.txt"

depths = parse.(Int, readlines(path_data))
answer_1 = count(diff(depths) .> 0)

sums_rolling = rolling(sum, depths, 3)
answer_2 = count(diff(sums_rolling) .> 0)

println("Number of increases: ", answer_1)
println("Number of rolling sum increases: ", answer_2)
