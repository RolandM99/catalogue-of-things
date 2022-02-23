require_relative '../genre'

describe Genre do
  context 'It should create a Genre instance with name' do
    genre = Genre.new('Way to the moon')
    it 'creates new Genre with the given parameters' do
      expect(genre).to be_an_instance_of Genre
    end
    #   it 'should check if it can be archived' do
    #     expect(genre.can_be_archived?).to eq true
    #   end
    it 'Should check the Genre name' do
      expect(genre.name).to eq 'Way to the moon'
    end
  end
end
