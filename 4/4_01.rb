# Ввод значения без проверки и конвертация его в Фаренгейты

class Translator # - Создание класса
    #initialize - зарезерверованное имя (конструктор)

    def initialize(tselts = 0) # параметр по умолчанию
        @tselts  = tselts; # инициализация переменной класса
        @far = 0
  
    end
    
    def read
        print "Введите значение в градусах по цельсию "
        @tselts = gets.chomp
        convert 
    end

    def show
        print "#{@tselts} градусов по цельсию сооответсвуют -> #{@far} градусам по Фаренгейту"
    end

    def convert
        @far = (@tselts.to_f * 1.8) + 32 # использование переменной класса
    end

    def check
        while(@tselts < 0)
            @tselts = gets
            puts "val: #{@tselts}"
        end
        convert
    end
end

test = Translator.new
test.read
test.show
# test.convert

