require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :name
  attr_reader :id, :archived

  def initialize(id, name, publish_date, archived: true)
    @id = id
    @name = name
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
    # @genre.add_item(self)
    # genre.items.push(self) unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    @author.add_item(self)
  end

  def add_source(source)
    @source = source
    @source.add_item(self)
  end

  def add_label(label)
    @label = label
    @label.add_item(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_year = Time.new.year
    publish_year = Date.strptime(@publish_date, '%Y-%m-%d').strftime('%Y').to_i
    current_year - publish_year >= 10
  end
end
