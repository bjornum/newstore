defmodule Prios.Repo.Migrations.UserToLogin do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :login_id, references (:logins)
    end
  end
end
