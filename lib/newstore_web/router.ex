defmodule NewstoreWeb.Router do
  use NewstoreWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", NewstoreWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/shoppingcart", ShoppingcartController, :index
    resources "/products", ProductsController
    get "/storage", StorageController, :index
    get "/admin", AdminController, :index
    get "/reguser", ReguserController, :index
  end

  scope "/admin", NewstoreWeb do
    get "/user", UserController, :index
    get "/adminuser", AdminuserController, :index
    get "/adminproduct", AdminproductController, :index
  end
  # Other scopes may use custom stacks.
  # scope "/api", NewstoreWeb do
  #   pipe_through :api
  # end
end
