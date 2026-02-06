// tic tac toe is played with 2 players, taking turns placing a mark on a 3x3 grid, and trying to get 3 squares in a row to win

// nouns: player, square grid, turn
// verbs: play

// Board
// Sqauare
// Player
// - mark
// - play

let readline = require("readline-sync");

class TTTGame { // game behaviour

  static WINNING_ROWS = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9], 
    [1, 5, 9],
    [3, 5, 7],
  ]

  constructor() {
    this.board = new Board();
    this.human = new Human();
    this.computer = new Computer();
  }

  play() { // main gameplay loop
    console.clear();
    this.displayWelcomeMessage()
    while(true){
      this.board.display()
      this.humanMoves()
      if (this.gameOver(this.human)) break
      this.computerMoves()
      if (this.gameOver(this.computer)) break
      console.clear();
    }

    this.displayGoodbyemessage()
  }

  displayWelcomeMessage() {
    console.log("Welcome to Tic-Tac-Toe!")
  }

  displayGoodbyemessage() {
    console.log("Thanks for playing, goodbye!")
  }

  humanMoves() {
    let choice;
    while (true) {
      choice = readline.question(`Choose a square (${this.board.availableSquares()}): `)
      if (this.board.availableSquares().includes(parseInt(choice))){
        break
      } else {
        console.clear();
        this.board.display()
        console.log("That is not a valid square. Please pick a square from the provided list")
      }
    }
    this.board.updateBoard(parseInt(choice), "X")
    this.human.currentSquares.push(parseInt(choice))
  }

  computerMoves() {

    let choice

      // check for a winning move.
      if (this.computerCanWin()){
        this.placeWinningMove() // place winning move
      //} else if (this.humanCanWin()){
      //  // block winning square
      } else if (this.board.isMiddleOpen()){ 
        this.computer.currentSquares.push(5) // record 
        this.board.updateBoard(5, "O") // place in middle square
      } else { // choose random square
        choice = Math.floor(Math.random() * (this.board.availableSquares().length - 1))
        this.computer.currentSquares.push(this.board.availableSquares()[choice])
        this.board.updateBoard(this.board.availableSquares()[choice], "O")
      }
  }

  gameOver(player){

      for (let rowNum = 0; rowNum < TTTGame.WINNING_ROWS.length; rowNum ++){ // iterate through all winning row possibilities
        let counter = 0
  
        TTTGame.WINNING_ROWS[rowNum].forEach(function (square){ // iterate through current winning row
          if (player.currentSquares.includes(square)){
            counter ++ // count how many squares player has of current winning row possibilty
          }
        })

        if (counter === 3) { // if player has all three squares in current possible winning row, player wins
          console.clear()
          this.board.display()
          console.log(`${player.name} wins!`)
          return true
        }
      }

      if (this.board.availableSquares().length === 0){
        console.log(`It's a tie!`)
        return true // tie game
      }
      return false // after searching all possible rows, no winning rows are found
    
  }
  
  computerCanWin(){
    // iterate through possible winning rows
    for (let rowNum = 0; rowNum < TTTGame.WINNING_ROWS.length; rowNum ++){
      let computerCounter = 0

      TTTGame.WINNING_ROWS[rowNum].forEach((square) => { // iterate through current winning row
        if (this.computer.currentSquares.includes(square)){
          computerCounter ++ // count how many squares computer has of current winning row possibilty
        }
      })

      if (computerCounter === 2){ // if computer has 2 out of 3 of winning row
        let humanCounter = 0

        TTTGame.WINNING_ROWS[rowNum].forEach((square) => { // iterate through current winning row
          if (this.human.currentSquares.includes(square)){
            humanCounter ++ // count how many squares human has of current winning row possibilty
          }
        })

        if (humanCounter < 1){ // if human does not occupy third square
          return true // place winning square
        }
      }
    }
    return false
  }

  placeWinningMove(){
        // iterate through possible winning rows
    for (let rowNum = 0; rowNum < TTTGame.WINNING_ROWS.length; rowNum ++){

      let currentRow = []

      TTTGame.WINNING_ROWS[rowNum].forEach((square, index) => { // copy array of row to currentRow array
        currentRow.push(square)
      })


      for (let current = 0; current < currentRow.length;) {  // iterate through current winning row
        if (this.computer.currentSquares.includes(currentRow[current])){
          currentRow.splice(current, 1) // remove matching square from current row
        } else {
          current ++ // or iterate to next number
        }
      }

      if (currentRow.length === 1){ // if computer has 2 out of 3 of winning row
        let humanCounter = 0

        TTTGame.WINNING_ROWS[rowNum].forEach((square) => { // iterate through current winning row
          if (this.human.currentSquares.includes(square)){
            humanCounter ++ // count how many squares human has of current winning row possibilty
          }
        })

        if (humanCounter < 1){ // if human does not occupy third square either
          this.computer.currentSquares.push(currentRow[0]) // record computer occupying square
          this.board.updateBoard(currentRow[0], "O") // place in remaining square not occupied by computer or human
        }
      }
    }

  }
}

class Board { // board state
  constructor() {
    this.squares = {}
    for (let counter = 1; counter <= 9; ++counter){
      this.squares[counter] = new Square(` ${counter} `);
    }
  }
  
  display(){
    console.log(` ${this.squares[1].mark} | ${this.squares[2].mark} | ${this.squares[3].mark}`);
    console.log("---+---+---");
    console.log(` ${this.squares[4].mark} | ${this.squares[5].mark} | ${this.squares[6].mark}`);
    console.log("---+---+---");
    console.log(` ${this.squares[7].mark} | ${this.squares[8].mark} | ${this.squares[9].mark}`);
  }

  availableSquares(){
    let array = []
    for (let counter = 1; counter <= 9; ++counter){
      if (this.squares[counter].mark === " ") array.push(counter);
    }
    return array
  }

  updateBoard(square, newMark){
    this.squares[square].mark = newMark
  }

  isMiddleOpen(){
    return this.squares[5].mark === " "
  }


}

class Square { // square state
  constructor(number) {
    this.mark = ` `;
    this.id = number
  }
  
  changeMark(newMark){
    this.mark = newMark
  }
  
}

class Player { // player behaviours
  constructor(name) {
    this.name = name
    this.currentSquares = []
  }

}

class Human extends Player {
  constructor(name = "Human"){
    super(name)
  }
}

class Computer extends Player {
  constructor(){
    super("Computer")
  }
}

game = new TTTGame(); // new instance of game class
game.play(); // starts main gameplay loop of the game