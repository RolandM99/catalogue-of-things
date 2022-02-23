require_relative './item'
class Genre
    attr_accessor :name
    attr_reader   :id, :items
    def initialize(name)
        @name = name 
        @id = rand(1...1000)
        @items = [] 
    end

    def add_item(item)
        item.add_genre(self)
        @items << item unless @items.include?(item)
        # item.genre(self) 
    end
        
end


genre =Genre.new('Way to the moon')

genre.add_item('hipop')
genre.add_item('hindi')
genre.add_item('work')
genre.add_item('Rumba')

print genre.items