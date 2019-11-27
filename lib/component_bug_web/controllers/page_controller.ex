defmodule ComponentBugWeb.PageController do
  use ComponentBugWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
