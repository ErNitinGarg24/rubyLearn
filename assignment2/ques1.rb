=begin
============================================================
Q: 1. Write a program which creates a class “Student” with the following Data Members rollNum, studName, mark1, mark2, mark3, totalMarks Methods setStudDetails() – which sets the values to all the data members except totalMarks. calculateTotal() - which calculate the totalMarks displayStudDetails() – which displays rollNum, studName and totalMarks Create a class StudentDemo to test the functionality of Student class.

Please define the variable names, classes, methods and all coding in ruby way of coding.
============================================================
=end

class Student
    def setStudDetails(rollNum, studName, mark1, mark2, mark3)
        @rollNum = rollNum
        @studName = studName 
        @mark1 = mark1
        @mark2 = mark2
        @mark3 = mark3
    end
    def calculateTotal
        @totalMarks = @mark1 + @mark2 + @mark3
    end
    def displayStudDetails
        calculateTotal
        puts @rollNum, @studName , @totalMarks
    end
end

stu1 = Student.new()
stu1.setStudDetails(1, "Nitin", 10, 11, 12)
stu1.displayStudDetails

stu2 = Student.new()
stu2.setStudDetails(2, "Nitin1", 11, 12, 13)
stu2.displayStudDetails