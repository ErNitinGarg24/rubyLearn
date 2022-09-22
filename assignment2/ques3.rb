=begin
============================================================
Q: 3. Write a program to define all set operations, union, intersection, compliment and cartesian product.



Set Operations:



Set A : [1,2,3,4]

Set B: [1,2,3,4}

A U B :

A N B :

A Compliment :

cartesian Product:

Commutative Law  :

Associative Law :

De Morgan's Law :
============================================================
=end
# Requiring set to perform actions
require 'set'

A = Set[1,2,3,4]

B = Set[1,2,3,4] 

# puts A, B

puts "A U B : #{A|B}"
puts "A N B : #{A&B}"

def cartesianProduct()