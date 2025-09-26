Welcome to todoApp

An app for keeping track of tasks.

Versions Used During Development:
NodeJS v18.19.1,
Ubuntu 16.6-0ubuntu0.24.04.1

Requirements:
NodeJS is required to run this application. 

Running the app:
This app runs in the terminal, so running the app simply requires you to navigate to the directory with the `todoApp.js` file within the terminal, and entering the command `node todoApp.js`.

Upon startup of the application, the list is populated with example data.

The app allows you to store a list of tasks, called "todo"s. You can then interact with the list and the items in the list in the following ways:
- add a new todo item to the list (`todoList.addTodo()`)
  - this method takes an object as an argument with key-value pairs for `title`, `month`, `year`, and `description`.
  - new todos are provided with a private, unique `id` number. A todo's id cannot be changed
- delete a todo item from the list (`todoList.deleteTodo()`)
  - this method takes a string as an argument, and removes the item in the list with a title that matches the input string.
  - Since the list does not restrict todos to have unique names, in the case of duplicate names, only the first instance with a matching name will be deleted, and the rest will remain.
- update properties of a todo
  - each property capable of being changed has its own method of interacting with it
    - (`updateTitle(title, newValue)`)
    - (`updateMonth(title, newValue)`)
    - (`updateYear(title, newValue)`)
    - (`updateDescription(title, newValue)`)
    - (`completeTodo(title)`)
  - the `id` property is not capable of being changed


Assumptions:
- There is only one todoList created at a time. 
