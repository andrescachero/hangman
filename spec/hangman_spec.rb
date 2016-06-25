require './lib/hangman'
describe Hangman do
    it 'shows the hidden word' do
        hangman = Hangman.new
        hangman.word = "Holala"
        expect(hangman.hidden_word).to eq '------'
    end

    it 'shows the matched letter' do
        hangman = Hangman.new
        hangman.word = "testword"
        hangman.match_letter("t")
        expect(hangman.hidden_word).to eq 'T--T----'
    end

    it 'acumulates wrong letters' do
        hangman = Hangman.new
        hangman.word = "testword"
        hangman.match_letter("a")
        hangman.match_letter("b")
        hangman.match_letter("c")
        expect(hangman.wrong_letters).to eq ['A','B','C']
    end

    it 'shows the remaining lives' do
        hangman = Hangman.new
        hangman.word = "testword"
        hangman.match_letter("x")
        expect(hangman.lives).to eq 6
    end

    it 'shows win message' do
        hangman = Hangman.new
        hangman.word = "abc"
        hangman.match_letter("a")
        hangman.match_letter("b")
        hangman.match_letter("c")
        expect(hangman.status).to eq "You win"
    end

    it 'shows lose message' do
        hangman = Hangman.new
        hangman.word = "abc"
        7.times { hangman.match_letter("d") }
        expect(hangman.status).to eq "You die"
    end

end