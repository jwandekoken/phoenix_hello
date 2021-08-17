defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # redirect(conn, external: "https://elixir-lang.org/")
    # redirect(conn, to: "/redirect_test")
    redirect(conn, to: Routes.page_path(conn, :redirect_test))
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end
end
