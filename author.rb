class Author
  attr_reader :first_name, :last_name
  attr_accessor :items

  def initialize(first_name, last_name)
    @id = rand(1...1000)
    @items = []
    @first_name = first_name
    @last_name = last_name
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.author = self
  end
end
