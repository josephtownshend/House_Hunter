defmodule HousehunterWeb.Router do
  use HousehunterWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HousehunterWeb do
    pipe_through :api
  end
end
