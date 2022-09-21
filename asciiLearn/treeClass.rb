
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
        # puts "The length of tree is #{@length}, and the space is #{@space}, and the hence the width is #{width}" 
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