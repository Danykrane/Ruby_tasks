# На ActiveRecord

# посчитайте количество всех студентов
students.all.count

# -- посчитайте количество студентов с именем Иван

students.where(name: 'Иван').count

# -- посчитайте количество студентов созданных после 1 сентября 2020 года

students.where(created_at: ("20/09/01" .. Time.now)).count