defmodule Hagrid.Habit.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :user_id, :id
    field :habit_id, :id

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [])
    |> validate_required([])
  end
end
