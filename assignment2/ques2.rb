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

 


# 1. Write a program to measure the electricity consumption charges
# If we need to define variables outside of the methods so we can access tehm anywhere or we can say make global variables we can do so by using $in front of the varable name
$billDetails = []
def calculateElctricity(name, units)

    billAmount = 0
    remUnits = 0
    # a) For the first 100 units - 6rupees per unit
    if units <= 100
        billAmount = units * 6
    # b) For the next 200 units - 11rupees per unit
    elsif units <= 300
        remUnits = units - 100
        billAmount = 600 + (remUnits * 11)
    # c) Beyond 300 units - 15rupees per unit
    else
        remUnits = units - 300
        billAmount = 2800 + (remUnits * 15)
    end
    # All users are charged a minimum of Rs.50.00.
    (billAmount < 50) ? billAmount = 50.to_f : billAmount
    # if the total amount is more than Rs.300.00 than additional surcharge of 15% should be added, by default 5% applicable.
    (billAmount>300) ? billAmount += (billAmount/100)*15 : billAmount += (billAmount/100)*5 
    
    puts "bill Amount including Surcharge is: #{billAmount}"
    hashBillDetail = {
        "Name" => name,
        "Units" => units,
        "Total Bill" => billAmount
    }
    $billDetails.push(hashBillDetail)
    # return $billDetails
    # puts billAmount
end


# The program should ask for number of user details
puts "How many user details you wanted to put?"
puts "Enter Number: "
number= gets.chomp.to_i 
customerDetails= []
number.times do |i|
    
    puts "What's your name? :"
    name = gets.chomp
    puts name

    puts "Hi #{name}, please type the number of units: "
    units = gets.chomp.to_f
    puts units
    hashData = {
        "name": name,
        "units": units
    }
    customerDetails.push(hashData)
end
# calculateElctricity
customerDetails.each do |customerDetail|
    puts customerDetail
    puts customerDetail[:name]
    calculateElctricity(customerDetail[:name], customerDetail[:units])
end

puts $billDetails