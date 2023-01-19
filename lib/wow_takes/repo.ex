defmodule WowTakes.Repo do
  use Ecto.Repo,
    otp_app: :wow_takes,
    adapter: Ecto.Adapters.Postgres
end
