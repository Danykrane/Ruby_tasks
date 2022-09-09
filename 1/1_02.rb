# напишите функцию, которая получает на вход исходный массив и возвращает 2 минимальных значения

arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893 ]

# 1 способ (отсортировать, вернуть 2 первых эл-та)

def show(val1,val2)
    puts "val1 is: #{val1}"
    puts "val2 is: #{val2}"
end

def max_val_perv(test)
    test = test.sort
    return test[0], test[1]
end

# a, b = max_val_perv(arr)
# show a , b

# 2 способ (отсортировать, избавиться от повторов, вернуть 2 первых эл-та)

def max_val_perv_uniq(test)
    test = test.sort.uniq
    return test[0], test[1]
end

# 3 способ (найти минимум, удалить перв мин из масиивва, найти второй минимум)

def max_val_perv_del(test)
    return test.minx, (test - [test.min]).min
end


# 4 способ (избавимся от повторов, найдем минимум, удалим перв мин из масиивва, найдем второй минимум)
def max_val_perv_del(test)
    test = test.uniq
    return test.min, (test - [test.min]).min
end
