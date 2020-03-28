defmodule Galaxy.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {Galaxy.Cluster, []}
    ]

    opts = [strategy: :one_for_one, name: Galaxy.Supervisor]
    Supervisor.start_link(children, opts)
  end
end