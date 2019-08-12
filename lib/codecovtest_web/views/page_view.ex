defmodule CodecovtestWeb.PageView do
  use CodecovtestWeb, :view
  use Phoenix.LiveView

  def is_it_covered_in_liveview(assigns) do
    ~L"""
      <%= if @foo do %>
        <span><%= "hello" <> "world" %></span>
      <% end %>
    </div>
    """
  end

  def is_it_covered_in_phoenix(assigns) do
    ~E"""
      <%= if @foo do %>
        <span><%= "hello" <> "world" %></span>
      <% end %>
    </div>
    """
  end
end
