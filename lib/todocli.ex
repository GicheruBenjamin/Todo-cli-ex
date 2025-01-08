defmodule Todocli do
  alias Todocli.Features.{AddTodo, ViewTodos, UpdateTodo, DeleteTodo, DeleteAllTodos}

  def run do
    IO.puts("""
    Welcome to ToDo CLI!
    Select an option:
    1. Add ToDo
    2. View ToDos
    3. Update ToDo
    4. Delete ToDo
    5. Delete All ToDos
    6. Exit
    """)

    case IO.gets("Your choice: ") |> String.trim() do
      "1" -> AddTodo.execute()
      "2" -> ViewTodos.execute()
      "3" -> UpdateTodo.execute()
      "4" -> DeleteTodo.execute()
      "5" -> DeleteAllTodos.execute()
      "6" -> IO.puts("Goodbye!")
      _ -> IO.puts("Invalid option. Please try again.") && run()
    end
  end
end
