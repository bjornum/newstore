defmodule Prios.Repo.Migrations.CreateLogins do
  use Ecto.Migration

  def change do
    create table(:logins) do
      add :username, :string
      add :password_hash, :string
      add :isadmin, :boolean, default: false, null: false
      timestamps()
    end
    create unique_index(:logins, :username)
  end
end
