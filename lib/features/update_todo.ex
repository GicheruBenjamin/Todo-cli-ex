defmodule Todocli.Features.UpdateTodo do
  def execute do
    todos = read_todos()

    if Enum.empty?(todos) do
      IO.puts("No todos to update.")
    else
      Enum.each(todos, fn %{id: id, task: task} ->
        IO.puts("[#{id}] #{task}")
      end)

      id = IO.gets("Enter the ID of the ToDo to update: ") |> String.trim() |> String.to_integer()
      task = IO.gets("Enter the updated task: ") |> String.trim()

      updated_todos = Enum.map(todos, fn
        %{id: ^id} = todo -> %{todo | task: task}
        todo -> todo
      end)

      write_todos(updated_todos)
      IO.puts("ToDo updated successfully!")
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
