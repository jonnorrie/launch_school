function Todo(title, id, month = '', year = '', description){
  
  this.id = id,
  this.title = title,
  this.month = month,
  this.year = year,
  this.description = description,
  this.completed = false,


  this.isWithinMonthYear = function(month = '', year = ''){
    month = month.toString()
    year = year.toString()
    return (this.month === month && this.year === year)    
  }
}


let todoList = (function() {
  let idCounter = 0
  let list = []

  function updateProperty(title, property, newValue){
    // Updates existing properties of a specific todo object
    let selectedTodo;

    for(let i = 0; i < list.length; i++){
      if(list[i].title == title){
        selectedTodo = list[i]
        break
      }
    }

    selectedTodo[property] = newValue
  }

  let listObject =  {
    addTodo: function(todoData){
      // Adds a todo object to the collection
      idCounter++
      let newTodo = new Todo(todoData.title, idCounter, todoData.month, todoData.year, todoData.description );
      list.push(newTodo);
      return newTodo
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
        if (list[i].id = idInput) return list[i]
      }
    },

    getList(){
      return list.map(function(todo){
        return {
          id: todo.id,
          title: todo.title,
          month: todo.month,
          year: todo.year,
          description: todo.description
        }
      })
    },

    updateTitle(title, newValue){
      updateProperty(title, 'title', newValue)
      return 
    },

    updateMonth(title, newValue){
      return updateProperty(title, 'month', newValue)
    },

    updateYear(title, newValue){
      return updateProperty(title, 'year', newValue)
    },

    updateDescription(title, newValue){
      return updateProperty(title, 'description', newValue)
    },

    completeTodo(title){
      return this.updateProperty(title, 'completed', true)
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

let todoManager = {

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






// ---------------------------------------------


// Tests


//// removing specific item from list
//console.log(todoList.getList())
//todoList.deleteTodo("Buy Veggies")
//console.log(todoList.getList()) // displays that 'Buy Veggies' todo is now missing from the list

//// list is private within todoList
//console.log(todoList.list) // returns undefined

//// list is only operable through getList function. todoList.getList() returns a copy of the list, not the actual list
//let list = todoList.getList() 
//console.log(list)
//list[0] = "string" // reassigns first element in copied list
//console.log(list) // first object in copied list is a string
//console.log(todoList.getList()) // first object remains unchanged in original list

//// new todos are given a unique id number
//let todoData5 = {
//  title: 'Go to the Gym',
//  month: '',
//  year: '',
//  description: 'To burn off the cheat day treat',
//};
//todoList.addTodo(todoData5)
//console.log(todoList.getList()) // new data is added to list, with a new and unique id number

//// todos share the `isWithinMonthYear` method
//let firstTodo = todoList.getList()[0]
//console.log(firstTodo.hasOwnProperty('isWithinMonthYear')) // returns false

//// `isWithinMonthYear` method returns true when month year combination of calling object matches the passed in values
//console.log(firstTodo.isWithinMonthYear(1, 2017)) // returns true
//console.log(firstTodo.isWithinMonthYear(5, 2017)) // returns false

//let secondTodo = todoList.getList()[1]
//console.log(secondTodo.isWithinMonthYear(1, 2017)) // returns false
//console.log(secondTodo.isWithinMonthYear('', 2017)) // returns true

//// updates existing properties of a specific todo object
//todoList.updateProperty('Buy Milk', 'month', 2)
//console.log(todoList.getList()[0]) // displays 'Buy Milk' todo object with month value as 2

// a todos id cannot be changed
console.log(todoList.getList()[0]) // id for this object shows as 1
todoList.getList()[0].id = 10000
console.log(todoList.getList()[0]) // id for this object remains as 1.

//// returns a specified todo object based on its `id` property
//console.log(todoList.getTodoById(2)) // returns todo list with id 2

//// returns all completed todo objects
//todoList.completeTodo('Buy Milk')
//todoList.completeTodo('Buy Apples')
//console.log(todoManager.getCompleted()) // returns array of todos with 'Buy Milk' and 'Buy Apples' titles

//// returns all todo objects within a given month-year combination
//let todoData6 = {
//  title: 'Study JavaScript',
//  month: '2',
//  year: '2017',
//  description: "I think I'm going to cry while I'm doing it, but I still have to do it",
//};
//todoList.addTodo(todoData6)
//console.log(todoManager.getWithinMonthYear(2, 2017)) // returns an array with 'Buy Milk' and 'Study JavaScript' todo objects

//// returns all completed todo objects within a given month-year combination
//todoList.completeTodo('Study JavaScript')
//console.log(todoList.getList())
//console.log(todoManager.getCompletedWithinMonthYear(2, 2017)) // returns array of only 'Study JavaScript' todo object
