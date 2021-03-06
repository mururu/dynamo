defmodule Mix.Tasks.Dynamo.Filters do
  use Mix.Task

  @shortdoc "Print all application filters"

  @moduledoc """
  Prints all application filters
  """
  def run(args) do
    Mix.Task.run "dynamo.app", args
    app   = Dynamo.app
    shell = Mix.shell

    Enum.each app.filters, fn(filter) ->
      shell.info "filter #{inspect filter}"
    end

    shell.info "#{inspect app.endpoint || app}.service/1"
  end
end
