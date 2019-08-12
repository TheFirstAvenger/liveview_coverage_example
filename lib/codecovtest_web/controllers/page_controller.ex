defmodule CodecovtestWeb.PageController do
  use CodecovtestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
