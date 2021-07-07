defmodule GitpodTestWeb.PageController do
  use GitpodTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
