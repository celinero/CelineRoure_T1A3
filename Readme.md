

# Software development Plan

## Purpose and scope 

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

   ![how_many_players.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/how_many_players.png)

   ![class player.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/player.png)

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

First the user can read this Readme documentation to learn more about the program, especially the help documentation below.  After cloning the repo and installing the app, the user will be welcome to the game with some ASCII art and the instructions will appear. The game is quite simple, all the steps are described and the user will be asked to respond a few questions before starting the game.

### How the user will interact, use the feat

There are two ways the user will interact: he/she will either have to select an option by moving the down and/or up arrow for multi-choice questions or type the answer.

For the feature players, the user will need to choose an input for the numbers of players then type an input for his/her name. 

For difficulty, the user will need to select an input between easy, medium or Hard. 

When the quiz starts, depending on which difficulty the user has chosen, he/she will have the possibility to select an answer from a predefined choices (mode "easy") or type his answer (mode "medium" and "hard").

At the end, once the users have finished responding all questions, they will be able to see their result and in which position they are.

### how errors will be handled and displayed

I have created some custom error: InvalidName and InvalidNewScore. If the user don't enter his/her name, a message will appear saying "Please make sure to provide a name" and then ask again to provide a name, until it's done or "new_score should be a numeric"

![class player.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/player.png)

![how_many_players.rb code](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/how_many_players.png)

![error Invalidnane](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/error_handling.png)



I create some Test Driven Development too, concerning the class Player, as it's mainly on that feature that error can happen. I use the Ruby Gem Rspec. It verify that the user can initialize a new player and have a total_score of ) when starting , later or that error like Invalidname and InvalidNewScore are working fine.

![TDD](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Screenshot of code/TDD.png)



## Diagram with control flow

This is the control flow for Harry Potter trivia game. As you can see, I prefer to separate each feature and do a summary on the first diagram. You can see the details of each feature in the following diagrams and can find them easily with the associated colours. For example how_many_players feature is the blue diagram.

For how_many_players, I use a for loop, for display_question I used conditionnals with if statements.

![trivia flowchart](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/main_flowchart.png)

![flowchart_part2](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/player-difficulty_flowchart.png)

![flowchart_part3](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/question_flowchart.png)



## Implementation plan

You can see the evolution of my project with the different Trello Boards. It was very useful at the start to create all the tickets for each requirements, features, asked. Then it helped my to keep track of the project progress.

![Trello boards](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Trello/Screen Shot 2021-05-19 at 9.43.50 am.png)

![Trello boards](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Trello/Screen Shot 2021-05-22 at 4.29.42 pm.png)

![Trello boards](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Trello/Screen Shot 2021-05-26 at 11.29.57 pm.png)

![Trello boards](/Users/celineroure/Desktop/CelineRoure_TIA3/docs/Trello/Screen Shot 2021-05-27 at 9.06.30 pm.png)

The main file Trivia.rb  require others files that represent each feature.

1. **How_many_players** / **Player**

   The tasks of this feature is to capture how many players are going to play, then register them with a name and a score. That score will allow later to create a leaderboard. I used a class with instance variables and create methods and classses to raise errors. This feature count a for loop to register each player's name and add it to an array with a rescue error handling.

   This feature was my priority number one, essential to run the app

   It took me around 4 hours to finalise it, on several days, as I was coming back to fix some error issues, especially with the TDD and Rspec.

2. **Choose_difficulty**

   This feature was easy to make once I understood how worked TTY-Prompt Ruby gem with the method select. Its goal was to ask the user to choose a difficulty for the game, as indicated by its name.

   It was my priority number 3.

   It took me one hour to implement it.

3. **Display_questions**/ **get_questions**

   This feature was the hardest one, as I have to think about how to store the questions and answer. I came back and fixed it multiple times. Its goal was to display the question and then capture correctly the answer depending on the difficulty of the game. I use if statement and method ask or prompt and create a timer, that gave me hard time. I tried to install a gem but didn't do the expected work so I came up with an idea inspired from online to implement it.

   All the questions are recorded in an array of hashes with the keys: label, multi-choice and answer.

   This was my priority number 2.

   It took me aroud 5 hours and I had to come back to modify it, especially for the answer, it was originally a string and I decided to change it to an array to let the player more chances to find the correct answer.

4. **Display_leaderboard**

   The last feature was finalised yesterday, as I was not sure about the outcome. Its main goal is to congratulate the winner and display by descending way the players name with the score who has the most total of points to the lowest.

   It was my last priority.

   It took me around 2 hours in total to make it





## Help Documentation

First, you will need a terminal and install Ruby with at least version 2..7.1 on your computer.

```sh
# verify which Ruby version is installed
ruby -v
```

Second you need to clone the repo.

Third, you will need the gem libraries. Bundler that is a manager should download the four Gem needed for this app: Artii, Colorize, TTY-prompt and Rspec.

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
