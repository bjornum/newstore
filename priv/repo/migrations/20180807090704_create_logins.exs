defmodule Prios.Repo.Migrations.CreateLogins do
  use Ecto.Migration

  def change do
    create table(:logins) do
      add :email, :string
      add :password_hash, :string
      add :isadmin, :boolean
      timestamps()
    end
  end
end
