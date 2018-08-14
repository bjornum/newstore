defmodule NewstoreWeb.ProductsController do
    use NewstoreWeb, :controller
  
    def index(conn, _params) do
      products = Prios.list_products
      render conn, "index.html", products: products
    end
end
  