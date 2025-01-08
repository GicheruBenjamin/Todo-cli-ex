defmodule Todocli.Features.DeleteTodo do
  def execute do
    todos = read_todos()

    if Enum.empty?(todos) do
      IO.puts("No todos to delete.")
    else
      Enum.each(todos, fn %{id: id, task: task} ->
        IO.puts("[#{id}] #{task}")
      end)

      id = IO.gets("Enter the ID of the ToDo to delete: ") |> String.trim() |> String.to_integer()
      updated_todos = Enum.reject(todos, fn %{id: ^id} -> true; _ -> false end)

      write_todos(updated_todos)
      IO.puts("ToDo deleted successfully!")
    end
  end

  defp read_todos do
    File.read!("data/data.json")
    |> Jason.decode!()
  end

  defp write_todos(todos) do
    File.write!("data/data.json", Jason.encode!(todos))
  end
end
