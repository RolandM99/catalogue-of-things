require_relative '../game'

describe Game do
  context 'It should create a Game instance with multiplayer and published date' do
    game =  Game.new('yes','2018-04-7','2020-04-7')
    it 'creates new game with the given parameters' do
      expect(game).to be_an_instance_of Game
    end
    it 'should check if it can be archived' do
      expect(game.can_be_archived?).to eq true
    end
    it 'Should check the Game multiplayer' do
      expect(game.multiplayer).to eq 'yes'
    end
  end
end
