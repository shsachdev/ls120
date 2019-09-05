arr1 = [1, 2, 3]

arr2 = [1, 2, 3]

arr1.object_id == arr2.object_id # => false

sym1 = :something
sym2 = :something

sym1.object_id == sym2.object_id # => true

int1 = 5
int2 = 5

int1.object_id == int2.object_id # => true
