Feature: The user starts the game

Scenario: the user starts a new game
	Given the user starts a new game
	Then the hidden word shows "--------"
	And the lives counter is 7

Scenario: A new letter in word is raised
	Given the user start a new game with word "testword"
	When a letter "t" is submited
	Then the hidden word shows "T--T----"
	And the lives counter is 7

Scenario: A new letter NOT in word is raised
	Given the user start a new game with word "testword"
	When a letter "X" is submited
	Then the display show the mismatch letter
	And the lives counter is 6
	And the displays shows " " message

Scenario: the user wins a game
	Given the user starts a new game
	Then a letter "t" is submited
	And a letter "e" is submited
	And a letter "s" is submited
	And a letter "w" is submited
	And a letter "o" is submited
	And a letter "r" is submited
	And a letter "d" is submited
	Then the hidden word shows "TESTWORD"
	And the displays shows "You win" message