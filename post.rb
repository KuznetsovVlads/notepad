# Базовый класс "Запись"
class Post
    def initialize
        @created_at = Time.now # дата создания записи
        @text = [] # массив строк записи — пока пустой
    end
    
    def self.post_types
        [Memo, Task, Link]
    end

    # Динамическое создание объекта нужного класса из набора возможных детей
    def self.create(type_index) 
        return post_types[type_index].new
    end

    # Вызываться в программе когда нужно считать ввод пользователя и записать его в нужные поля объекта
    def read_from_console
        #todo
    end

    # Возвращает состояние объекта в виде массива строк, готовых к записи в файл
    def to_string
        #to do
    end

# Записывает текущее состояние объекта в файл
    def save
        file - File.new(file_path, "w:UTF-8")
        for item in to_string do
            file.puts(item)
        end
        file.close
    end

# Метод, возвращающий путь к файлу, куда записывать этот объект
    def file_path
        current_path = File.dirname(__FILE__)
        file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
        return current_path + "/" + file_name
    end
end