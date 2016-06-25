require 'sinatra'
require './lib/hangman'
# require "sinatra/reloader" if development?

get '/' do
	@@hangman = Hangman.new
	@@hangman.word = "testword"
	@hidden_word = @@hangman.hidden_word
	@wrong_letters = @@hangman.wrong_letters
	@lives = @@hangman.lives
	erb :index
end

post '/new-letter' do
	@@hangman.match_letter(params[:new_letter])
	@hidden_word = @@hangman.hidden_word
	@wrong_letters = @@hangman.wrong_letters
	@lives = @@hangman.lives
	erb :index
end
