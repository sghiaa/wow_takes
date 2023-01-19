defmodule WowTakesWeb.PageController do
  use WowTakesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
