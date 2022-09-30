=begin
============================================================
Q: 1. Write a program which creates a class “Student” with the following Data Members rollNum, studName, mark1, mark2, mark3, totalMarks Methods setStudDetails() – which sets the values to all the data members except totalMarks. calculateTotal() - which calculate the totalMarks displayStudDetails() – which displays rollNum, studName and totalMarks Create a class StudentDemo to test the functionality of Student class.

Please define the variable names, classes, methods and all coding in ruby way of coding.
============================================================
=end


# =========================================================================================================
# Important Note: Please define the variable names, classes, methods and all coding in ruby way of coding.
# =========================================================================================================

# 1. Write a program which creates a class “Student”
class Student
    # 1.1. class shouldhave data members 
    #  1.1.1) rollNum, 
    @@rollNum
    #  1.1.2) studName, 
    @@studName 
    #  1.1.3) mark1, 
    @@mark1
    #  1.1.4) mark2, 
    @@mark2
    #  1.1.5) mark3, 
    @@mark3
    #  1.1.6) totalMarks 
    @@totalMarks
    #  1.1.7) Methods 
    #   1.1.7.1) setStudDetails() 
    def self.setStudDetails
        #    1.1.7.1.1) sets the values to all the data members except totalMarks
        puts "What's your roll No.: "
        @@rollNum = gets.chomp.to_i
        puts "What's yout name: "
        @@studName = gets.chomp        
        puts "What's your mark1.: "
        @@mark1 = gets.chomp.to_i        
        puts "What's your mark2.: "
        @@mark2 = gets.chomp.to_i
        puts "What's your mark3.: "
        @@mark3 = gets.chomp.to_i
    end
    #   1.1.7.2) calculateTotal()
    def self.calculateTotal
        #    1.1.7.2.1) calculate the totalMarks
        setStudDetails
        @@totalMarks = @@mark1 + @@mark2 + @@mark3
    end
    #   1.1.7.3) displayStudDetails()
    def self.displayStudDetails
    #    1.1.7.3.1) which displays rollNum, studName and totalMarks
        calculateTotal
        puts "Hi the rollNumber of the student is #{@@rollNum}, Name of the student #{@@studName} ,The total marks are #{@@totalMarks}"
    end
end


# 2. Create a class StudentDemo
class StudentDemo
#   2.1) to test the functionality of Student class
    Student.displayStudDetails
end