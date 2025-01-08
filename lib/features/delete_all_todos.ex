defmodule Todocli.Features.DeleteAllTodos do
  def execute do
    File.write!("data/data.json", Jason.encode!([]))
    IO.puts("All ToDos have been deleted!")
  end
end
