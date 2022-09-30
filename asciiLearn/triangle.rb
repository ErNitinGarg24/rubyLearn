# =======================================================
# Making Triangle   
# =======================================================

puts "Which character you want to use , to make the triangle?"
character = gets.chomp

puts "How many lines you would like to iterate the triangle?"
rows = gets.chomp.to_i

character_rep = 1
width = (character.length * ((rows * 2)-1)) + 20

# puts character, character.length , character_rep, width, rows

rows.times do 
    puts (character * character_rep).center(width)
    character_rep += 2
end
