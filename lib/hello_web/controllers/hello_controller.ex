defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    # text(conn, "From messenger #{messenger}")
    # json(conn, %{id: messenger})
    # html(conn, """
    #  <html>
    #    <head>
    #       <title>Passing a Messenger</title>
    #    </head>
    #    <body>
    #      <p>From messenger #{Plug.HTML.html_escape(messenger)}</p>
    #    </body>
    #  </html>
    # """)
    # render(conn, "show.html", [messenger: messenger, wololo: "lulz"])
    conn
    |> put_layout("admin.html")
    |> Plug.Conn.assign(:messenger, messenger)
    |> Plug.Conn.assign(:wololo, "lulz")
    |> render("show.html")
  end

  plug HelloWeb.Plugs.Locale, "pt" when action in [:index]
end
