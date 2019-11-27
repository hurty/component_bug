defmodule ComponentBugWeb.MessageComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
    <div><%= @message.title %></div>
    """
  end
end
