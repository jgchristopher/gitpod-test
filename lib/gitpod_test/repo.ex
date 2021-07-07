defmodule GitpodTest.Repo do
  use Ecto.Repo,
    otp_app: :gitpod_test,
    adapter: Ecto.Adapters.Postgres
end
