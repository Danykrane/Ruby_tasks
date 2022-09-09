arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

# массив значений хэша

val =  arr.map {|x| x.values}.join(", ").split.map(&:to_i)
p val
