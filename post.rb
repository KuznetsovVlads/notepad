# Базовый класс "Запись"
class Post
    def initialize
        @created_at = Time.now # дата создания записи
        @text = nil # массив строк записи — пока пустой
    end
    
    def read_from_console
        #to do
    end

    def to_string
        #to do
    end

    def save
        #to do
    end
end