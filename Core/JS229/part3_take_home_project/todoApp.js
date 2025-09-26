class Todo{
  
  constructor(title, id, month = '', year = '', description, completed = false){
    this.id = id,
    this.title = title,
    this.month = month,
    this.year = year,
    this.description = description,
    this.completed = completed
  };

  isWithinMonthYear(month = '', year = ''){
    month = month.toString()
    year = year.toString()
    return (this.month === month && this.year === year)    
  }
}

const todoList = (function() {
  let idCounter = 0
  let list = []

  function updateProperty(title, property, newValue){
    // Updates existing properties of a specific todo object
    let todo;

    for(let i = 0; i < list.length; i++){
      todo = list[i]
      if(todo.title == title){
        todo[property] = newValue

        let newObject =  new Todo(todo.title, todo.id, todo.month, todo.year, todo.description, todo.completed)
        return newObject;
      }
    }

  }

  let listObject =  {
    addTodo: function(todoData){
      // Adds a todo object to the collection
      idCounter++
      let todo = new Todo(todoData.title, idCounter, todoData.month, todoData.year, todoData.description);
      list.push(todo);

      return new Todo(todo.title, todo.id, todo.month, todo.year, todo.description);
    },

    deleteTodo: function(title){
      // Deletes a todo object from the collection
      for(let i = 0; i < list.length; i++){
        if(list[i].title == title){
          list.splice(i, 1)
        }
      }
    },

    getTodoById(idInput){
      // Returns a specified todo object based on its id property
      for(let i = 0; i < list.length; i ++){
        let todo = list[i]
        if (todo.id === idInput) {
          return new Todo(todo.title, todo.id, todo.month, todo.year, todo.description, todo.completed)
        }
      }
    },

    getList(){
      return list.map(function(todo){
        return new Todo(todo.title, todo.id, todo.month, todo.year, todo.description, todo.completed)
      })
    },

    updateTitle(title, newTitle){
      return updateProperty(title, 'title', newTitle)
       
    },

    updateMonth(title, newMonth){
      return updateProperty(title, 'month', newMonth)

    },

    updateYear(title, newYear){
      return updateProperty(title, 'year', newYear)
    },

    updateDescription(title, newDescription){
      return updateProperty(title, 'description', newDescription)
    },

    completeTodo(title){
      let todo;

      for (let i = 0; i < list.length; i ++){
        todo = list[i]
        if (todo.title === title){
          if (todo.completed === false){
            return updateProperty(title, 'completed', true)
          } else {
            return updateProperty(title, 'completed', false)
          }
        }
      }
      return undefined
    },


  }

   // Initializing todoList with input data
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

  let todoSet = [todoData1, todoData2, todoData3, todoData4];

  todoSet.forEach(function(todoData){
    listObject.addTodo(todoData) // adds given data
  })

  return listObject

})()

const todoManager = {

  getAll: function(){
    // Returns all todo objects
    return todoList.getList()
  },

  getCompleted: function(){
    // Returns all completed todo objects
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
    // Return all todo objects within a given month-year combination
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
    // Return all completed todo objects within a given month-year combination
    let output = []

    let list = todoList.getList()

    list.forEach(function(todo){

      if(todo.isWithinMonthYear(month, year) && todo.completed === true){
        output.push(todo)
      }
    })

    return output
  },

}






// Tests

// ---------------------------------------------

// removing specific item from list
console.log(todoList.getList())
todoList.deleteTodo("Buy Veggies")
console.log(todoList.getList()) // displays that 'Buy Veggies' todo is now missing from the list

// ---------------------------------------------

// list is private within todoList

console.log(todoList.list) // returns undefined

// ---------------------------------------------

// list is only operable through getList function. todoList.getList() returns a copy of the list, not the actual list

let list = todoList.getList() 
console.log(list)
list[0] = "string" // reassigns first element in copied list
console.log(list) // first object in copied list is a string
console.log(todoList.getList()) // first object remains unchanged in original list

// ---------------------------------------------

// new todos are given a unique id number

let todoData5 = {
  title: 'Go to the Gym',
  month: '',
  year: '',
  description: 'To burn off the cheat day treat',
};
todoList.addTodo(todoData5)
console.log(todoList.getList()) // new data is added to list, with a new and unique id number

// ---------------------------------------------

// todo objects do not have their own copy of `isWithinMonthYear` method
// `isWithinMonthYear` method returns true when calling todo object has same month and year property as passed in month and year values

let firstTodo = todoList.getList()[0]
console.log(firstTodo.isWithinMonthYear(1, 2017)) // returns true
console.log(firstTodo.isWithinMonthYear(2, 2017)) // returns false
console.log(firstTodo.hasOwnProperty('isWithinMonthYear')) // returns false

// ---------------------------------------------

// updates existing properties of a specific todo object

console.log(todoList.getList()[0]) // displays 'Buy Milk' todo object with month value as 1
todoList.updateMonth('Buy Milk', '2') // updates 'Buy Milk' todo object's month property to 2
console.log(todoList.getList()[0]) // displays 'Buy Milk' todo object with month value as 2
todoList.updateMonth('Buy Milk', '2').month = 100000 // attempts to change month to 10000 by editing month property of returned todo object
console.log(todoList.getList()[0]) // displays 'Buy Milk' todo object with month value still as 2

// ---------------------------------------------

// a todos id cannot be changed

console.log(todoList.getList()[0]) // id for this object shows as 1
todoList.getList()[0].id = 10000 // attempt to change the id of a todo through the returned list
console.log(todoList.getList()[0]) // id for this object remains as 1.

// ---------------------------------------------

// returns a specified todo object based on its `id` property

console.log(todoList.getTodoById(2)) // returns todo list with id 2
console.log(todoList.getTodoById(3)) // returns todo list with id 3

// ---------------------------------------------

// returns all completed todo objects

todoList.completeTodo('Buy Milk')
todoList.completeTodo('Buy Apples')
console.log(todoManager.getCompleted()) // returns array of todos with 'Buy Milk' and 'Buy Apples' titles

// ---------------------------------------------

// returns all todo objects within a given month-year combination

let todoData6 = {
  title: 'Study JavaScript',
  month: '2',
  year: '2017',
  description: "I think I'm going to cry while I'm doing it, but I still have to do it",
};

todoList.addTodo(todoData6)
console.log(todoList.getList())
console.log(todoManager.getWithinMonthYear(2, 2017)) // returns an array with 'Buy Milk' and 'Study JavaScript' todo objects

// ---------------------------------------------

// returns all completed todo objects within a given month-year combination

todoList.completeTodo('Study JavaScript')
todoList.updateMonth('Buy Milk', '2') // updates 'Buy Milk' todo object's month property to 2
console.log(todoManager.getCompletedWithinMonthYear(2, 2017)) // returns array of only 'Study JavaScript' todo object

// ---------------------------------------------

//cannot use `updateProperty` method to change properties

//todoList.updateProperty('Buy Milk', 'title', 'Steal Milk') // returns error

//// ---------------------------------------------

// todoList.completeTodo with a title that already has a completed property value of true will be toggled back to false
todoList.completeTodo('Study JavaScript')
console.log(todoList.getList()) // displays 'Study JavaScript' todo with `completed` property being false