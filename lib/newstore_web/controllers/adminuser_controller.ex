defmodule NewstoreWeb.AdminuserController do
    use NewstoreWeb, :controller

    def index(conn, _params) do
      users = Prios.list_users 
      render conn, "index.html", users: users
    end
end
  