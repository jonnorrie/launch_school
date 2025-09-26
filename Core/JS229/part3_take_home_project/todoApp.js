class Todo {

  constructor(title, id, month = '', year = '', description){
    this.id = id,
    this.title = title,
    this.month = month,
    this.year = year,
    this.description = description,
    this.completed = false
  }

  isWithinMonthYear(month = '', year = ''){
    month = month.toString()
    year = year.toString()
    return (this.month === month && this.year === year)    
  }
}

let todoList = (function() {
  // stores todo objects
  let idCounter = 0
  let list = []

  return {
    addTodo: function(todoData){
      idCounter++
      let newTodo = new Todo(todoData.title, idCounter, todoData.month, todoData.year, todoData.description );
      list.push(newTodo);
      return newTodo
    },

    deleteTodo: function(title){
      for(let i = 0; i < list.length; i++){
        if(list[i].title == title){
          list.splice(i, 1)
        }
      }

    },

    getTodoById(idInput){
      for(let i = 0; i < list.length; i ++){
        if (list[i].id = idInput) return list[i]
      }
    },

    getList(){
      return list.slice()
    },

    updateProperty(title, property, newValue){
      let selectedTodo;

      for(let i = 0; i < list.length; i++){
        if(list[i].title == title){
          selectedTodo = list[i]
          break
        }
      }

      selectedTodo[property] = newValue
      return selectedTodo

    },

    completeTodo(title){
      return this.updateProperty(title, 'completed', true)
    }


  }

})()

let todoManager = {

  allTodos: function(){
    return todoList.getList()
  },

  getCompletedTodos: function(){
    let output = []

    let list = todoList.getList()

    list.forEach(function(todo){
      if(todo.completed === true){
        output.push(todo)
      }
    })

    return output
  },

  getWithinMonthYear: function(month, year){
    let output = []

    let list = todoList.getList()

    list.forEach(function(todo){
      if(todo.isWithinMonthYear(month, year)){
        output.push(todo)
      }
    })

    return output
  },

  getCompletedWithinMonthYear: function(month, year){
    let output = []

    let list = todoList.getList()

    list.forEach(function(todo){
      console.log(todo.title, todo.completed)
      if(todo.isWithinMonthYear(month, year) && todo.completed === true){
        output.push(todo)
      }
    })

    return output
  },


}

// ---------------------------------------------
// Tests


let todoData1 = {
  title: 'Buy Milk',
  month: '1',
  year: '2017',
  description: 'Milk for baby',
};

let todoData2 = {
  title: 'Buy Apples',
  month: '',
  year: '2017',
  description: 'An apple a day keeps the doctor away',
};

let todoData3 = {
  title: 'Buy chocolate',
  month: '1',
  year: '',
  description: 'For the cheat day',
};

let todoData4 = {
  title: 'Buy Veggies',
  month: '',
  year: '',
  description: 'For the daily fiber needs',
};

// Adding todo data to todoList
let todoSet = [todoData1, todoData2, todoData3, todoData4];

todoSet.forEach(function(todoData){
  todoList.addTodo(todoData) // adds given data 
})


//// removing specific item from list
//console.log(todoList.getList())
//todoList.deleteTodo("Buy Veggies")
//console.log("'Buy Veggies' deleted")
//console.log(todoList.getList())

//// list is private within todoList
//console.log(todoList.list) // returns undefined

////// list is only operable through getList function
//let list = todoList.getList()
//console.log(list)
//list[0] = "string"
//console.log(list) // first object is a string
//console.log(todoList.getList()) // first object remains unchanged

////// new todos are given a unique id number
let todoData5 = {
  title: 'Go to the Gym',
  month: '',
  year: '',
  description: 'To burn off the cheat day treat',
};
todoList.addTodo(todoData5)
console.log(todoList.getList()) // new data is added to list, with a new and unique id number

//// todos share the `isWithinMonthYear` method
//let firstTodo = todoList.getList()[0]
//console.log(firstTodo.hasOwnProperty('isWithinMonthYear')) // returns false

////// `isWithinMonthYear` method returns true when month year combination of calling object matches the passed in values
//console.log(firstTodo)
//console.log(firstTodo.isWithinMonthYear(1, 2017)) // returns true
//console.log(firstTodo.isWithinMonthYear(5, 2017)) // returns false

//let secondTodo = todoList.getList()[1]
//console.log(secondTodo.isWithinMonthYear(1, 2017)) // returns false
//console.log(secondTodo.isWithinMonthYear('', 2017)) // returns true

//// updates existing properties of a specific todo object
todoList.updateProperty('Buy Milk', 'month', 2)
console.log(todoList.getList()[0]) // displays 'Buy Milk' todo object with month value as 2

////// returns a specified todo object based on its `id` property
//console.log(todoList.getTodoById(2)) // returns todo list with id 2

////// returns all completed todo objects
//todoList.completeTodo('Buy Milk')
//todoList.completeTodo('Buy Apples')
//console.log(todoManager.getCompletedTodos()) // returns array of todos with 'Buy Milk' and 'Buy Apples' titles

// returns all todo objects within a given month-year combination
let todoData6 = {
  title: 'Study JavaScript',
  month: '2',
  year: '2017',
  description: "I think I'm going to cry while I'm doing it, but I still have to do it",
};
todoList.addTodo(todoData6)
console.log(todoManager.getWithinMonthYear(2, 2017)) // returns an array with 'Buy Milk' and 'Study JavaScript' todo objects

// returns all completed todo objects within a given month-year combination
todoList.completeTodo('Study JavaScript')
console.log(todoList.getList())
console.log(todoManager.getCompletedWithinMonthYear(2, 2017))