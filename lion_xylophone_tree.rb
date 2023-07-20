# Prompt user for input 

print "How old are you? "
age = gets.chomp.to_i

# Begin main loop 

until age > 100 do 
  puts "Age #{age}: You have emerged from your teenage years and begun to enter adulthood. You may find yourself taking more responsibility and reflecting on your life and how you want to shape it."
  
  # Increment counter
  
  age += 1 
end 

# After loop exits

puts "Age #{age}: Congratulations on reaching 100 years of age! You have a wealth of experiences to draw upon and still have much to offer. Be sure to take care of yourself and stay involved in life, and you will continue to age gracefully."