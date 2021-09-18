defmodule Hagrid.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :user_id, references(:users, on_delete: :nothing)
      add :habit_id, references(:habits, on_delete: :nothing)

      timestamps()
    end

    create index(:events, [:user_id])
    create index(:events, [:habit_id])
  end
end
