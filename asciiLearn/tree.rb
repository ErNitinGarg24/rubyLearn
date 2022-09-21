# =======================================================
# Making Tree
# =======================================================

puts "How much lenght you want for your tree?"
length = gets.chomp.to_i

tree_slashes = 1
width = ((length * 2)-1) + 20

length.times do |i|
    puts (("/"*tree_slashes)+("\\" *tree_slashes)).center(width)
    if i > 0
        next unless i%3 != 0 
    end
    tree_slashes += 1
end
puts "||".center(width)
