defmodule HelloWeb.PageController do
  use HelloWeb, :controller
  require Logger

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
