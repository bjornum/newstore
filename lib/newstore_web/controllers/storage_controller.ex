defmodule NewstoreWeb.StorageController do
    use NewstoreWeb, :controller
  
    def index(conn, _params) do
      render conn, "index.html"
    end
end
  