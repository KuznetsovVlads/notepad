#Класс "Заметка", разновидность базового класса "Запись"
class Memo < Post
# отдельный конструктор здесь не нужен, т. к. он совпадает с родительским

    # Метод, который спрашивает у пользователя, что он хочет написать в дневнике
    def read_from_console
        puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."
        line = nil

        # Запустим цикл, пока не дошли до строчки "end"
        while line != "end" do
            line = STDIN.gets.chomp
            @text << line
        end
        # Теперь удалим последний элемент из массива @text – там служебное слово "end"
        @text.pop
    end

    def save
        file = File.new(file_path, "w:UTF-8")
        # Сперва запишем в блокнот дату и время записи и сделаем отступ
        time_string = @created_at.strftime("%Y.%m.%d, %H:%M")
        file.puts(time_string + "\n")
        
        for item in @text do    
            file.puts(item)
        end
        file.close
    end
end