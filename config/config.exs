# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :basic_api,
  ecto_repos: [BasicApi.Repo]

# Configures the endpoint
config :basic_api, BasicApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NLHZUu57fSJlc/wbkUxuen9BVsQ8vLoJX6lSftR162I3YTXqqG7jhI73WIxZvS3W",
  render_errors: [view: BasicApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BasicApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
