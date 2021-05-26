

# Software development Plan

## Purpose and scope (300-500 words)

### Describe what the application do

The Ruby terminal app is a Trivia Game with a Harry Potter theme.  It can be multi-players, up to four people and users have the choice between three difficulties: easy, medium and hard. The app will display questions about Harry Potter and depending on the difficulty, user will have to choose answer from multiple choice or write the answer directly. At the end, the leader board will be displayed. 

### Identify the problem and explain why I develop it 

I created this application for the audience to have fun and get entertained or test their knowledge about Harry Potter. 

### Target

The audience is vast, from teenager to senior who are fans of Harry Potter, either books or movies and enjoy quizz. But not only fans can play, I guess anyone who at least watched or read one the movie/book can participate.

As the application can be multi-players, this game can be played between family members or by a group of friends.

### Explain how to use it

The app includes several steps:

1. First, when the application starts running, it will display a welcome message using ASCII art. 
2. Then it will ask how many players want to play with a select choice between one and four, using the up and down arrow. 
3. Once the number is selected, each player has to write their names.
4. Then select a difficulty between Easy, Medium and Hard with the arrow.
5. The game can begin ! One by one, each player will answer a few questions, determined in the app. Depending on the difficulty, the answer can either be selected from a multi-choice answers or type the answer. If they choose the hard difficulty, a timer will be added, so the payer has to respond quickly to get points.
6. Once every player has answered questions, the leaderboard will be displayed and a goodby meaage with an ASCII art image.



## List of features 

1. The first feature is **How_many_players**:

   ![how_many_players.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/how_many_players.rb_code.png)

   ![class player.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/player.rb_code.png)

   When the app starts running, first the user will be asked how many players want to play. The user will have to choose between 1 and 4, then to enter the name of each player.

   This method will require the gem TTY-prompt to select an answer between choices and the class Player.

   It will use a for loop to ask  via "prompt.ask" and collect the name of each player that will be stored in an array  called "players".

   If the user does not enter a name and press enter to skip this step, it will raise an issue "Invalid name" and display this message: "Please make sure to provide a name" until the user type a name.

   

2. **Choose_difficulty**

   ![choose_difficulty.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/choose_difficulty.rb_code.png)

   Once the user(s) has written it/their name(s), the application will asked it/them what difficulty he/she/they want: easy, medium or hard. The difficulty will apply for this game for all the users. Il will be possible to choose a different difficulty for the next game.

   This method will require the gem TTY-prompt to select an answer between choices.

   This information will be stored in the variable "difficulty".

   This feature can not handle any error.

    

3. **Display_question**

   ![display_question code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/display_question.png)

   ![get_question.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/get_questions.png)

   The feature display_question is a method that has 3 arguments: question, difficulty and player.

   This method requires Ruby gem TTY-prompt". It will use conditionals statement with IF/ELSE. So if difficulty is easy, it will displayed first the label of the question (that it store in the array of hashes called "questions" in method "get_questions()") then the user will be asked to select an answer from the multi-choice for each question from this same array. If difficulty is medium or hard , the label of the question will be displayed and the user will have to type the answer. If the difficulty is hard, it will had a timer, after 10 seconds, the answer won't be considered.

   If the answer of the user is matching with one the answer of the question, it will add 10 points to  add_to_total_score, otherwise it won't add any points. the value of the key :answer has be modified to become an array and allow user a range of answers.

   The number of questions can be modified in the method get_questions as it is an argument. Currently it is set at 5.

   

4. **Display_leaderboard**

   ![display ledaerboard code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/display_leaderboard.png)

   After the players have answered questions, we want to know the score.

   If there is a single user, the score of this user will be displayed.

   If there are multiple players, the leaderboard will be displayed in a descending way from the user who has the most points to the one was has the lowest.

   

   

## User interaction and experience outline

### How the user will find out how to interact, use each feat

Intro with Ruby **Gem artii**, **Gem colorize**

### How the user will interact, use the feat

uses input and output in 2 or more sophisticated ways

The users will have to select an option or type it.

For the feature players, he will have to choose an input, then type an input for his/her name. 

For difficulty, he needs to select an input then depending on which difficulty the user has chosen, he/she will have the possibility to select an answer from a predefined choices (mode "easy") or type his answer (mode "medium" and "hard")

### how errors will be handled and displayed

Gem Rspec

## Diagram with control flow

show logic and integration of the feat

![trivia flowchart](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/main_flowchart.png)

![flowchart_part2](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/player-difficulty_flowchart.png)

![flowchart_part3](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/question_flowchart.png)



## Implementation plan

![Trello boards](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Trello/Screen Shot 2021-05-19 at 9.43.50 am.png)

![Trello boards](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Trello/Screen Shot 2021-05-22 at 4.29.42 pm.png)

![Trello boards](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Trello/Screen Shot 2021-05-26 at 11.29.57 pm.png)



1. **How_many_players**

   how each feat will be implemented

   checklist of tasks (min 5)

   prioritise: 1st

   deadlines, duration

2. **Choose_difficulty**

   how each feat will be implemented

   checklist of tasks (min 5)

   prioritise: 2nd

   deadlines, duration

3. **Display_questions**

   how each feat will be implemented

   checklist of tasks (min 5)

   prioritise: 3rd

   deadlines, duration

4. **Display_scores**

   how each feat will be implemented

   checklist of tasks (min 5)

   prioritise: 4th or last

   deadlines, duration





## Help Documentation

First, you will need a terminal and install Ruby with at least version 2..7.1 on your computer.

```sh
# verify which Ruby version is installed
ruby -v
```

Second you need to clone the repo.

Third, you will need the gem libraries:

```sh
# install the dependency manager bundler
gem install bundler

# then execute bundle to download all the dependencies for this project
bundle install

# run this command to start the terminal app
run_app.sh
```

Have fun!





# CelineRoure_T1A3
