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

# A = Set[1,2,3,4]
A = Set[1,3, 5, 7]

B = Set[1,2,3,4] 

# Let U be the universal set
U = A|B
# puts A, B

puts "A U B : #{A|B}"
puts "A N B : #{A&B}"
puts U


# A Compliment :
#   The complement of a set is the set that includes all the elements of the universal set that are not present in the given set
puts "Compliment of A ie.  A'(Symbolic representstion of Compliment of A) : #{U - A}"

# cartesian Product:
puts "cartesianProduct of A and B is : #{A.to_a.product(B.to_a).to_set}"

# Commutative Law  :
def commutativeLaw(a, b)
    #   This law indicates 
    #       1) A U B = B U A
    #           puts "A U B : #{a|b} and B U A : #{b|a}"
    #           puts "A U B = B U A : #{(a|b = b|a)? "true" : "false"}"
    #       2) A N B = B N A
    #           puts "A U B = B U A : #{(a&b = b&a)? "true" : "false"}"
    puts "A U B = B U A : #{((a|b = b|a) && (a&b = b&a))? "Commutative law proved" : "false"}"
end
commutativeLaw(U, A)
commutativeLaw(U, B)
commutativeLaw(B, A)
commutativeLaw(A, B)
commutativeLaw(B, U)
commutativeLaw(A, U)


# Associative Law :
def associativeLaw(a, b, c)
# Associative Law states that the grouping of set operation does not change the result of next grouping of sets. It is one of the important concepts of set theory. If we have three sets A, B and C, then,

#    1. Associative Law of Intersection: (A ∩ B) ∩ C = A ∩ (B ∩ C)
puts "(A ∩ B) ∩ C = A ∩ (B ∩ C) : #{(((a|b)|c = a|(b|c)) && ((a&b)&c = a&(b&c)))? "Associative law proved" : "false"}"
#    2. Associative Law of Union: (A U B) U C = A U (B U C)
end
associativeLaw(A, B, U)
associativeLaw(B, A, U)
associativeLaw(A, U, B)
associativeLaw(B, U, A)
associativeLaw(U, B, A)
associativeLaw(U, A, B)

# De Morgan's Law :