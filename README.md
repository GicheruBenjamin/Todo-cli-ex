# Todocli
A cli app that takes input and performs stores it in a json file.

```bash
$ mix deps.get
$ iex -S mix
```

```elixir
iex(1)> Main.run()
Welcome to ToDo CLI!
Select an option:
1. Add ToDo
2. View ToDos
3. Update ToDo
4. Delete ToDo
5. Delete All ToDos
6. Exit
Your choice: 1
Enter your todo: Learn Elixir
ToDo added successfully!
iex(2)> Main.run()
Welcome to ToDo CLI!
Select an option:
1. Add ToDo
2. View ToDos
3. Update ToDo
4. Delete ToDo
5. Delete All ToDos
6. Exit
Your choice: 2
iex(3)> Main.run()
Welcome to ToDo CLI!
Select an option:
1. Add ToDo
2. View ToDos
3. Update ToDo
4. Delete ToDo
5. Delete All ToDos
6. Exit
Your choice: 3
Enter the ID of the ToDo to update: 1
Enter the updated task: Learn Elixir
ToDo updated successfully!
iex(4)> Main.run()
Welcome to ToDo CLI!
Select an option:
1. Add ToDo
2. View ToDos
3. Update ToDo
4. Delete ToDo
5. Delete All ToDos
6. Exit
Your choice: 4
Enter the ID of the ToDo to delete: 1
ToDo deleted successfully!
iex(5)> Main.run()
Welcome to ToDo CLI!
Select an option:
1. Add  ToDo
2. View ToDos
3. Update ToDo
4. Delete ToDo
5. Delete All ToDos
6. Exit
Your choice: 5
Enter the ID of the ToDo to delete: 1
ToDo deleted successfully!
iex(6)> Main.run()
Welcome to ToDo CLI!
Select an option:
1. Add ToDo
2. View ToDos
3. Update ToDo
4. Delete ToDo
5. Delete All ToDos
6. Exit
Your choice: 6
```