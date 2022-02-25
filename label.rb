class Label
  attr_accessor :title
  attr_reader :items

  def initialize(title)
    @title = title
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end
end
