defmodule Househunter.Repo do
  use Ecto.Repo,
    otp_app: :househunter,
    adapter: Ecto.Adapters.Postgres
end
