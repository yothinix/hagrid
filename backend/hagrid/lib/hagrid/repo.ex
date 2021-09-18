defmodule Hagrid.Repo do
  use Ecto.Repo,
    otp_app: :hagrid,
    adapter: Ecto.Adapters.Postgres
end
