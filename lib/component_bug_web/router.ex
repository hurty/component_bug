defmodule ComponentBugWeb.Router do
  use ComponentBugWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ComponentBugWeb do
    pipe_through :browser

    live "/", MessagesLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", ComponentBugWeb do
  #   pipe_through :api
  # end
end
