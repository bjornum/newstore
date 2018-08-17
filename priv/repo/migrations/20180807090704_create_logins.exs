defmodule Prios.Repo.Migrations.CreateLogins do
  use Ecto.Migration

  def change do
    create table(:logins) do
      add :email, :string
      add :password_hash, :string
      add :isadmin, :boolean, default: false, null: false
      timestamps()
    end
    create unique_index(:logins, :email)
  end
end
