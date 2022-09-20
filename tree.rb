# =======================================================
# Typing Name   
# =======================================================
# require 'open-uri'
# req = open("").read
# puts req

# =======================================================
# Making Triangle   
# =======================================================

# puts "Which character you want to use , to make the triangle?"
# character = gets.chomp

# puts "How many lines you would like to iterate the triangle?"
# rows = gets.chomp.to_i

# character_rep = 1
# width = (character.length * ((rows * 2)-1)) + 20

# puts character, character.length , character_rep, width, rows

# rows.times do 
#     puts (character * character_rep).center(width)
#     character_rep += 2
# end


# =======================================================
# Making Tree
# =======================================================

# puts "How much lenght you want for your tree?"
# length = gets.chomp.to_i

# tree_slashes = 1
# width = ((length * 2)-1) + 20

# length.times do |i|
#     puts (("/"*tree_slashes)+("\\" *tree_slashes)).center(width)
#     if i > 0
#         next unless i%3 != 0 
#     end
#     tree_slashes += 1
# end
# puts "||".center(width)

# =======================================================
# Converting Trees into class and trying to create Forest
# =======================================================
class Trees
    def initialize(length, space)
        @length = length.to_i
        @space = space.to_i
    end
    def create_tree   
        tree_slashes = 1
        # Creating space contained for the tree
        width = (@length * 2) + @space
        puts "The length of tree is #{@length}, and the space is #{@space}, and the hence the width is #{width}"  
        # width = 200
        @length.times do |i|
            puts (("/"*tree_slashes)+("\\" *tree_slashes)).center(width)
            if i > 0
                next unless i%3 != 0 
            end
            tree_slashes += 1
        end
        puts "||".center(width)
    end
end

a = Trees.new(rand(1..10),rand(1..10) )
a.create_tree