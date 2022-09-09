arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]
p arr
# массив ключей хэша
key_arr =  arr.map {|x| x.keys}.join(", ").split.uniq
p key_arr