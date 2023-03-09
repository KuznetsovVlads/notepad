# Класс Задача, разновидность базового класса "Запись"
require 'date' # Подключим встроенный в руби класс Date для работы с датами
class Task < Post
    def initialize
        super
        @due_date = '' 
    end

    # Этот метод пока пустой, он будет спрашивать 2 строки - описание задачи и дату дедлайна
    def read_from_console
        puts "Что вам необходимо сделать?"
        @text = STDIN.gets.chomp

        puts "До какого числа вам нужно это сделать?"
        puts "Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2023"
        input = STDIN.gets.chomp
# Для того, чтобы записть дату в удобном формате, воспользуемся методом parse класса Time
        @due_date = Date.parse(input)
    end
    
    def save
        file = File.new(file_path, "w:UTF-8")
        time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
        file.puts(time_string + "\n")
        file.puts(@text)
        file.puts("Сделать до #{@due_date.strftime("%Y.%m.%d")}")
        file.close

    end

end