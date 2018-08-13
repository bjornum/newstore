# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :newstore,
  ecto_repos: [Newstore.Repo]

# Configures the endpoint
config :newstore, NewstoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "prW0+KEoUY54j8x2oL1k4HFWSPGhw6Vc93Dkvm0lbWsWAfYvvEdZ1mAmKkHws+5C",
  render_errors: [view: NewstoreWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Newstore.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]


  config :prios, Prios.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "newstore_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
config :prios, ecto_repos: [Prios.Repo]
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
