def get_questions(number_of_questions)

  questions = [{
    label: "What house at Hogwarts does Harry belong to?",
    multi_choice: ["Slytherin", "Hufflepuff", "Gryffindor", "Ravenclaw"],
    answer: "Gryffindor"
  }, {
    label: "What position does Harry play on his Quidditch team?",
    multi_choice: ["Seeker", "Bludger", "Chaser", "Keeper"],
    answer: "Seeker"
  }, {
    label: "What is Lord Voldemort’s real name?",
    multi_choice: ["Peter Pettigrew", "James Sirius Potter", "Tommy Riddle Marvolo", "Tom Marvolo Riddle"],
    answer: "A three headed dog"
  }, {
    label: "Who kills Professor Dumbledore?",
    multi_choice: ["Drago Malfoy", "Severus Snape", "Fenrir Greyback", "Bellatrix Lestrange"],
    answer: "Severus Snape"
  }, {
    label: "What is the name of the first Harry Potter book?",
    multi_choice: ["Harry Potter and the chamber of secrets", "Harry Potter and the dragon's fire", "Harry Potter and the philosopher's stone", "Harry Potter and the sorcerer's stone"],
    answer: "Harry Potter and the chamber of secrets"
  }, {
    label: "How are Hogwarts students placed in their houses?",
    multi_choice: ["They draw straws", "They're in the same house as their parents", "The sorting hat", "They're assigned by professor dumbledore"],
    answer: "The sorting hat"
  }, {
    label: "What does the Marauder's Map show?",
    multi_choice: ["Hidden treasure", "The password to Dumbledore's office", "The room of requirement", "The location of everyone at Hogwarts"],
    answer: "the location at everyone at Hogwarts"
  }, {
    label: "What is Harry's Patronus?",
    multi_choice: ["A rabbit", "A cat", "A stag", "A unicorn"],
    answer: "A stag"
  }, {
    label: "What is a Horcrux?",
    multi_choice: ["A troll", "A snake", "A part of someone's soul", "A spider"],
    answer: "A part of someone's soul"
  }, {
    label: "How are Dudley Dursley and Harry Potter related?",
    multi_choice: ["Cousins", "Neighbours", "Friends", "Brothers"],
    answer: "Cousins"
  }, {
    label: "Which platform at King’s Cross station does the Hogwarts Express leave from?",
    multi_choice: ["9 and 3/4", "10", "7 and 1/2", "11.2"],
    answer: "9 and 3/4"
  }, {
    label: "What does the scar on Harry’s head look like?",
    multi_choice: ["The moon", "A broomstick", "A lightning bolt", "An owl"],
    answer: "A lightning bolt"
  }, {
    label: "Dumbledore is an old English word for what?",
    multi_choice: ["Magician", "Bumblebee", "A wise man", "A person who rambles"],
    answer: "Bumblebee"
  }, {
    label: "In what year was the first Harry Potter book published?",
    multi_choice: ["1990", "1995", "1997", "2000"],
    answer: "1997"
  }, {
    label: "How many languages have the Harry Potter books been translated into?",
    multi_choice: ["12", "45", "67", "83"],
    answer: "9 and 3/4"
  }]

  return questions.shuffle.first(number_of_questions)
end
