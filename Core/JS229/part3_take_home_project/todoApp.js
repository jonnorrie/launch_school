class Todo {

  constructor(title, id, month, year, description){
    this.id = id,
    this.title = title,
    this.month = month,
    this.year = year,
    this.description = description,
    this.completed = false
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

    todoById(idInput){
      for(let i = 0; i < list.length; i ++){
        if (list[i].id = idInput) return list[i]
      }
    },

    getList(){
      return list.slice()
    }


  }

})()

let todoManager = {

  allTodos: function(){
    return todoList.getList()
  },

  completedTodoLists: function(){
    let output = []

    let list = todoList.getList()

    list.forEach(function(todo){
      if(todo.completed === true){
        output.push(todo)
      }
    })

    return output
  }


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
  todoList.addTodo(todoData)
})



// removing specific item from list
console.log(todoList.getList())
todoList.deleteTodo("Buy Veggies")
console.log("'Buy Veggies' deleted")
console.log(todoList.getList())

// list is private within todoList
console.log(todoList.list) // returns undefined

// list is only operable through getList function
let list = todoList.getList()
console.log(list)
list[0] = "string"
console.log(list) // first object is a string
console.log(todoList.getList()) // first object remains unchanged

// new todos are given a unique id number
let todoData5 = {
  title: 'Go to the Gym',
  month: '',
  year: '',
  description: 'To burn off the cheat day treat',
};
todoList.addTodo(todoData5)
console.log(todoList.getList())