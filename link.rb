# Класс Ссылка, разновидность базового класса "Запись"
class Link < Post
    def initialize
        super # вызываем конструктор родителя
        @url = ""
    end

    def read_from_console #2 строки — адрес ссылки и описание
        puts "Введите адрес ссылки"
        @url = STDIN.gets.chomp

        puts "Напишите пару слов о том, куда ведёт ссылка"
        @text = STDIN.gets.chomp
    end

    def save
        file = File.new(file_path, "w:UTF-8")
        time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
        file.puts(time_string + "\n")

        file.puts(@url)
        file.puts(@text)

        file.close
        puts "Ваша ссылка сохранена"
    end

    def to_string # Массив из трех строк: адрес ссылки, описание и дата создания
        
    end
end