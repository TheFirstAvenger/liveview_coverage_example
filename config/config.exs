# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :codecovtest,
  ecto_repos: [Codecovtest.Repo]

# Configures the endpoint
config :codecovtest, CodecovtestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e+Ts5QPpkb1VadGtAMEPSkaTXBP2/vg3O52cQgLQg446yKZa34QmhDNMCKp1Y/t9",
  render_errors: [view: CodecovtestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Codecovtest.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
