defmodule Prios.Repo.Migrations.ProductToSupplier do
  use Ecto.Migration

  def change do
    alter table(:products) do
      add :supplier_id, references (:suppliers)
    end
  end
end
