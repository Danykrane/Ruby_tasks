# посчитайте количество студентов с родителями
students.where.not(name: nil).count



# посчитайте количество студентов без родителей
students.where(name: nil).count