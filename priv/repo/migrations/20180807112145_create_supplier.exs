defmodule Prios.Repo.Migrations.CreateSupplier do
  use Ecto.Migration

  def change do
    create table(:suppliers) do
      add :company_name, :string
      add :org_number, :string
      add :contact_person, :string
      timestamps()
    end
  end
end
