Feature: The user starts the game

Scenario: the user starts a new game
	Given the user starts a new game
	Then the hidden word shows "--------"

Scenario: A new letter is raised
	Given the user start a new game with word "testword"
	When a letter "t" is submited
	Then the hidden word shows "t--t----"