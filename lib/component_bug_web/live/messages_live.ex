defmodule ComponentBugWeb.MessagesLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <h1>Messages</h1>

    <%= for message <- @messages do %>
      <%= if true do %>
        <%= live_component @socket, ComponentBugWeb.MessageComponent, id: message.id, message: message %>
      <% end %>
    <% end %>
    """
  end

  def mount(_session, socket) do
    messages = [
      %{id: 1, title: "Hello"},
      %{id: 2, title: "Bonjour"},
      %{id: 3, title: "Ciao"}
    ]

    {:ok, assign(socket, :messages, messages)}
  end
end
