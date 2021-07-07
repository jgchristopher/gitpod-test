# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gitpod_test,
  ecto_repos: [GitpodTest.Repo]

# Configures the endpoint
config :gitpod_test, GitpodTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "13dCUOG11wWT/2ja4HYhQrtOKfc8Zr3Mm/nA3JlwubNR19QAaLRTD+bwxYlD1kpz",
  render_errors: [view: GitpodTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GitpodTest.PubSub,
  live_view: [signing_salt: "/HoXBahe"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
