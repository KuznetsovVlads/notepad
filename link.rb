# Класс Ссылка, разновидность базового класса "Запись"
class Link < Post
    def initialize
        super # вызываем конструктор родителя
        @url = ""
    end

    def read_from_console #2 строки — адрес ссылки и описание

    end

    def to_string # Массив из трех строк: адрес ссылки, описание и дата создания
        
    end
end