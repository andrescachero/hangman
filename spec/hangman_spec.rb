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
		expect(hangman.hidden_word).to eq 't--t----'
	end

end