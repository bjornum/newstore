defmodule NewstoreWeb.UserController do
    use NewstoreWeb, :controller
    alias Prios.Repo
    alias Prios.Identity
    alias Prios.Identity.User
    alias Prios.Identity.Login
    alias Prios.Helpers.Auth

    plug :check_auth when action in [:my_profile]

defp check_auth(conn, _args) do
  if login_id = get_session(conn, :current_login_id) do
  current_user = Identity.get_login(login_id)
  conn
    |> assign(:current_user, current_user)
  else
    conn
    |> put_flash(:error, "You need to be signed in to access this page.")
    |> redirect(to: page_path(conn, :index))
    |> halt()
  end
end

def index(conn, _params) do
  users = Identity.list_users()
  render(conn, "index.html", users: users)
end

def new(conn, _params) do
  changeset = Identity.change_login(%Login{users: %User{}})
  render(conn, "new.html", changeset: changeset)
end

def create(conn, %{"login" => login_params}) do
  case Identity.create_login(login_params) do
    {:ok, login} ->
      conn
      |> put_session(:current_login_id, login.id)
      |> put_flash(:info, "Signed up successfully.")
      |> redirect(to: page_path(conn, :index))
    {:error, %Ecto.Changeset{} = changeset} ->
      render(conn, "new.html", changeset: changeset)
  end
end

def my_profile(conn, _params) do
  login = Auth.my_user(conn)
  render(conn, "show.html", login: login)
end

def show(conn, %{"id" => id}) do
  user = Identity.get_user(id)
  login = Identity.get_login(id)
  render(conn, "show.html", user: user, login: login)
end
  
    
end
  