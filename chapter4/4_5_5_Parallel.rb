x, y, z = 1, 2, 3 # x=1; y=2; z=3

x = 1, 2, 3 # x = [1,2,3]

x, = 1, 2, 3 # x = 1

x, y, z = [1, 2, 3] # Same as x,y,z = 1,2,3

x = [1,2] # x becomes [1,2]: this is not parallel assignment
x, = [1,2] # x becomes 1: the trailing comma makes it parallel

x, y, z = 1, 2 # x=1; y=2; z=nil

x, y = 1, 2, 3 # x=1; y=2;

x, y, z = 1, *[2,3] # Same as x,y,z = 1,2,3

x,*y = 1, 2, 3 # x=1; y=[2,3]
x,*y = 1, 2 # x=1; y=[2]
x,*y = 1 # x=1; y=[]

*x,y = 1, 2, 3 # x=[1,2]; y=3
*x,y = 1, 2 # x=[1]; y=2
*x,y = 1 # x=[]; y=1

x, y, *z = 1, *[2,3,4] # x=1; y=2; z=[3,4]

x,(y,z) = 1, 2 # x = 1; y,z = 2


x,y,z = 1,[2,3] # No parens: x=1;y=[2,3];z=nil
x,(y,z) = 1,[2,3] # Parens: x=1;y=2;z=3

a,b,c,d = [1,[2,[3,4]]] # No parens: a=1;b=[2,[3,4]];c=d=nil
a,(b,(c,d)) = [1,[2,[3,4]]] # Parens: a=1;b=2;c=3;d=4

print a
puts
print b
puts
print c
puts
print d
puts

puts 2**3**2 == 2**(3**2)
