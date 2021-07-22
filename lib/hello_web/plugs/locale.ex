defmodule HelloWeb.Plugs.Locale do
  import Plug.Conn
  require Logger

  @locales ["en", "fr", "de", "pt"]

  def init(default) do
    Logger.info "default: #{inspect(default)}"
    default
  end

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end
