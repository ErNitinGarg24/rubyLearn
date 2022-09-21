# level should be min 5 and you can use any number that can fit yourscreen size
# Here I am selecting random numbers from 5-10
level = rand(5..10)
width = level * 15

def creatingLine(char, level)
    return ("_" * 4*level)+"#{char}"
end
# Creating Ceiling of the Hut
level.times do |i|
    if i == 0
        puts ("_" * 4*level).center(width) 
    elsif i == level-2
        puts ("/"+("_" * 2*(i-1))+"\\"+creatingLine("\\", level)).center(width) 
    elsif i == level-1
        puts ("/|"+(" " * 2*(i-2))+"|\\"+creatingLine("\\", level)).center(width)
    else
        puts ("/"+(" " * 2*(i-1))+"\\"+creatingLine("\\", level)).center(width)
    end
end
# Creating Base of the Hut
level.times do |i|
    puts ("_|"+("_" * ((level-3)*2)) +"|"++creatingLine("|_", level)).center(width) unless i != (level -1)
    next unless i != (level -1)
    puts ("|"+(" " * ((level-3)*2)) +"|"+(" " * 4*level)+"|").center(width)
end