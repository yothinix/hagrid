defmodule HagridWeb.EventController do
  use HagridWeb, :controller

  def list(conn, _params) do
    text(conn, "yay")
  end
end
