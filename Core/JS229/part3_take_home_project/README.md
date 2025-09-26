Welcome to todoApp.js

An app for keeping track of tasks.

Versions Used During Development:
NodeJS v18.19.1,
Ubuntu 16.6-0ubuntu0.24.04.1

Requirements:
NodeJS is required to run this application.

Assumptions Made During Development:
- There is only one `todoList` created.
- It is possible for there to be multiple todos with the same name.
- the `todoList` object is to be prepopulated with `Todo` objects upon startup.
- there is not user input anywhere in this application

Running the app:
This app runs in the terminal, so running the app simply requires you to navigate to the directory with the `todoApp.js` file within the terminal, and enter the command `node todoApp.js`. The test cases provided at the end of the file will be executed and logged to the console.

Upon startup of the application, the list is populated with example data. Currently it is not possible to prompt the user for input through the console.




The `todoList`:

The app allows you to store a list of tasks, called "todo"s. You can then interact with the list and the items in the list using the `todoList` object's methods:
- add a new todo item to the list (`todoList.addTodo(object)`)
  - this method takes an object as an argument with key-value pairs for `title`, `month`, `year`, and `description`.
  - created `todo` objects are provided with a private, unique `id` number. A todo's id cannot be changed

- delete a todo item from the list (`todoList.deleteTodo()`)
  - this method takes a string as an argument, and removes the item in the list with a title that matches the input string.
  - Since the list does not restrict todos to have unique names, in the case of duplicate names, only the first instance with a matching name will be deleted, and the rest will remain.

- update properties of a todo
  - each property capable of being changed has its own method of interacting with it. Each `update` method takes a title as a string to indicate which todo object to update, and a new string value to replace the corresponding existing value and returns a copy of the updated todo object
    - (`updateTitle(title, newTitle)`) updates the title of a todo to the passed in `newTitle`
    - (`updateMonth(title, newMonth)`) updates the month of a todo to the passed in `newMonth`
    - (`updateYear(title, newYear)`) updates the year of a todo to the passed in `newYear`
    - (`updateDescription(title, newDescription)`) updates the description of a todo to the passed in `newDescription`
    - (`completeTodo(title)`)
      - if the property of the todo object with a matching title is false, this will be changed to true. 
      - if the property of the todo object with a matching title is true, this will be changed back to false. 
  - the `id` property is not capable of being changed.

- retrieve a todo object by its id (`getTodoById(idInput)`)
  - returns only a copy of the todo object with matching id properties



The `todoManager`:

  A `todoManager` is included within the app to query the `todoList` in the following ways:
- obtain an array of all the todo objects currently in the `todoList` (`todoManager.getAll()`)

- obtain an array of todo objects with a `completed` property value of `true` (`todo.Manager.getCompleted()`)

- obtain an array of todo objects with specific `month` and `year` properties (`todoManager.getWithinMonthYear(month, year)`)

- obtain an array of todo objects with specific `month` and `year` properties AND that have a `completed` property value of `true` (`todoManager.getCompletedWithinMonthYear(month, year)`)


