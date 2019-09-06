defmodule HousehunterWeb.Router do
  use HousehunterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: HousehunterWeb.Schema.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: HousehunterWeb.Schema.Schema,
      interface: :simple
  end
end
