=begin
============================================================
Q:4. Write a program to read a file and do below operations



a) replaces all numbers to words (eg 1 to one)

b) Write the replaced output to a new file
============================================================
=end

# file = File.open("assignment2/test.txt")
# fileData = file.read
# puts fileData

# puts fileData.readlines.map(&:chomp)

# Before running this code please clear everything inside write.txt file.
writeFile = File.open("assignment2/write.txt", 'w')
readFile = File.open("assignment2/test.txt")
readFile.each_line do |line| 
    line.each_char do |c|
        case c
            when "1"
                writeFile.write("one")
            when "2"
                
                writeFile.write("two")
            when "3"
                
                writeFile.write("three")
            when "4"
                
                writeFile.write("four")
            when "5"
                
                writeFile.write("five")
            when "6"
                
                writeFile.write("six")
            when "7"
                
                writeFile.write("seven")
            when "8"
                
                writeFile.write("eight")
            when "9"
                
                writeFile.write("nine")
            when "0"
                
                writeFile.write("zero")
            else
                writeFile.write(c)
        end
        # puts writeFile
    end
end
readFile.close
writeFile.close
puts File.readlines("assignment2/write.txt")