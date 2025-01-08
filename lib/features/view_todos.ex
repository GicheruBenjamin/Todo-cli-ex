defmodule Todocli.Features.ViewTodos do
  def execute do
    todos = read_todos()
    IO.inspect(todos, label: "Todos List")

    if Enum.empty?(todos) do
      IO.puts("No todos found.")
    else
      Enum.each(todos, fn todo ->
        IO.inspect(todo, label: "Current Todo")
        case todo do
          %{id: id, task: task} -> IO.puts("[#{id}] #{task}")
          _ -> IO.puts("Invalid todo format: #{inspect(todo)}")
        end
      end)
    end
  end

  defp read_todos do
    case File.read("data/data.json") do
      {:ok, content} ->
        case Jason.decode(content) do
          {:ok, todos} -> todos
          {:error, _} -> []
        end

      {:error, _} ->
        []
    end
  end
end
