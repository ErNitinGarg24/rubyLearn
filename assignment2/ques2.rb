=begin
============================================================
Q: 2. Write a program to measure the electricity consumption charges



a) For the first 100 units - 6rupees per unit

b) For the next 200 units - 11rupees per unit

c) Beyond 300 units - 15rupees per unit



All users are charged a minimum of Rs.50.00. if the total amount is more than Rs.300.00 than additional surcharge of 15% should be added, by default 5% applicable.



The program should ask for number of user details based on number it should ask name and no of units, calculate the charges respectively and store in a array of hash and display the details.

============================================================
=end

def calculateElctricity
    puts "What's your name? :"
    name = gets.chomp

    puts "Hi #{name}, please type the number of units: "
    units = gets.chomp.to_f

    billAmount = 0
    remUnits = 0
    if units <= 100
        billAmount = units * 6
    elsif units <= 300
        remUnits = units - 100
        billAmount = 600 + (remUnits * 11)
    else
        remUnits = units - 300
        billAmount = 2800 + (remUnits * 15)
    end
    puts "bill Amount before 50 is: #{billAmount}"
    (billAmount < 50) ? billAmount = 50.to_f : billAmount
    puts "bill Amount After 50 is: #{billAmount}"
    (billAmount>300) ? billAmount += (billAmount/100)*15 : billAmount += (billAmount/100)*5 
    
    puts "bill Amount including Surcharge is: #{billAmount}"

    # puts billAmount
end
calculateElctricity