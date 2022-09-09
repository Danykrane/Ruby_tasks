# обработчик ошибок
# По своей сути задание задключается в поиске такого значения, которого нельзя назвать float
class Translator # - Создание класса
    #initialize - зарезерверованное имя (конструктор)

    def initialize(tselts = 0) # параметр по умолчанию
        @tselts  = tselts; # инициализация переменной класса
        @far = 0
  
    end
    
    def read
        print "Введите значение в градусах по цельсию "
        @tselts = gets.chomp
        valid
        convert 
    end

    def show
        print "#{@tselts} градусов по цельсию сооответсвуют -> #{@far} градусам по Фаренгейту"
    end


    def convert
        @far = (@tselts.to_f * 1.8) + 32 # использование переменной класса
    end

    def valid
        flag = @tselts.to_s.match?(/^[+-]?([1-9]\d*|0)(\.\d+)?$/) # проверка строки на вещественное чило
        unless flag == true
             puts "Вы ввели неправильное значение, введите еще раз!"
             read            
        end
    end
end

test = Translator.new
test.read
test.show


