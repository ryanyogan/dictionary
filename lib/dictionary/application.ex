defmodule Dictionary.Application do
  use Application

  @impl true
  def start(_type, _opts) do
    import Supervisor.Spec

    children = [
      worker(Dictionary.WordList, [])
    ]

    options = [
      name: Dictionary.Supervisor,
      strategy: :one_for_one
    ]

    Supervisor.start_link(
      children,
      options
    )
  end
end
