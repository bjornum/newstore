defmodule NewstoreWeb.ProductsController do
    use NewstoreWeb, :controller
  
    def index(conn, _params) do
      products = Prios.list_products
      prod  = Prios.get_product 1
      render conn, "index.html", products: products, prod: prod
    end
end
  