-- Aging Gracefully --
-- Lua programming language --

-- Declare constants used throughout the code.
local MIN_AGE = 0
local MAX_AGE = 120

-- Define age-specific functions.
local function calculateAgePoints(age)
	if age > MAX_AGE then
		return 0
	elseif age > 80 then
		return age - 80
	elseif age > 60 then
		return 60 - age
	elseif age > 40 then
		return age - 40
	elseif age > 20 then
		return 20 - age
	else 
		return age
	end
end

local function computeAgeScore(age)
	local ageScore = 0
	for i = MIN_AGE, age do 
		ageScore = ageScore + calculateAgePoints(i)
	end
	return ageScore
end

-- Define a function to calculate the aging gracefully score.
function calculateAgingGracefullyScore(age)
	local agScore = 0
	if age >= 0 and age <= 120 then
		agScore = computeAgeScore(age)
	end
	return agScore
end

-- Define a function to print the score details.
function printAgingGracefullyScore(agScore, age)
	print("Score for age " .. age .. " is " .. agScore)
end

-- Define a function to get user input
function getUserInput()
	print("Please enter your age")
	local age = io.read("*n")
	return age
end

-- Main program flow.
local age = getUserInput()
local agScore = calculateAgingGracefullyScore(age)
printAgingGracefullyScore(agScore, age)