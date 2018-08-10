defmodule Prios.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :fname, :string
      add :lname, :string
      add :email, :string
      add :phone, :string
      add :address, :string
      add :postal_code, :string
      add :city, :string
      add :country, :string
      add :cart, {:array, :map}, default: []
      timestamps()
    end
  end
end
