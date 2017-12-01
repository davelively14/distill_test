defmodule DistillTestWeb.PageController do
  use DistillTestWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
