defmodule Prios.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :integer
      add :details, :string
      add :image, :map
      add :tags, :string
      add :inventory, :integer
      timestamps()
    end
  end
end
