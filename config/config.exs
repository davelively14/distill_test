# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :distill_test,
  ecto_repos: [DistillTest.Repo]

# Configures the endpoint
config :distill_test, DistillTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NDJ9Z5PjeCREdFYUdGh+tZGtFobMwi5aQw4mS1+10l1sWKkTi/gT4sL8K9nFXUBi",
  render_errors: [view: DistillTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DistillTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
