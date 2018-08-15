defmodule NewstoreWeb.SharedProductInfoController do
    use NewstoreWeb, :controller
  
    def info(conn, %{"id" => id}) do
        product = Prios.get_product(id)
        render conn, "info.html", product: product
    end
end