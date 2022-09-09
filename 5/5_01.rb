 # Светофор

 class Svetofor

    def initialize  (color = "не указан первоначальный цвет") # параметр по умолчанию
       @color = color
    end

    def read
        print "Введите цвет светофора: "
        @color = gets.chomp
        valid
    end
    
    def choise
        puts "Привет на перекрестке!"
        until  @choise == "y" || @choise == "yes" do
            work
            puts "Хочешь завершить? y/n"
            @choise = gets.chomp
        end
        puts "До встречи, хорошего дня!"
    end

    def work 
       read
       case @color
       when "red"
        puts "Стоять!"
       when "green"
        puts "Можно идти"
       when "yellow"
        puts "Ждать"
       end
    end

    def valid
        flag = @color.to_s.match?(/^(red|green|yellow)$/) # проверка строки на вещественное чило
        unless flag == true
             puts "Вы ввели неправильное значение, введите еще раз!"
             read            
        end
    end

    def show
        puts "В данный моент горит #{@color} цвет"
    end

 end


pervi_sv = Svetofor.new
pervi_sv.choise