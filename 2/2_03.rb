arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

# сумма значений хэша через функцию sum

val =  arr.map {|x| x.values}.join(", ").split.map(&:to_i).sum
p val

# сумма значений хэша через each
val =  arr.map {|x| x.values}.join(", ").split.map(&:to_i)

sum = 0;
val.each {|value| sum= sum +value}
p sum