defmodule Todocli.Features.AddTodo do
  def execute do
    todo = IO.gets("Enter your todo: ") |> String.trim()
    todos = read_todos()
    updated_todos = todos ++ [%{id: Enum.count(todos) + 1, task: todo}]
    write_todos(updated_todos)
    IO.puts("ToDo added successfully!")
  end

  defp read_todos do
    File.read!("data/data.json")
    |> Jason.decode!()
  end

  defp write_todos(todos) do
    File.write!("data/data.json", Jason.encode!(todos))
  end
end
