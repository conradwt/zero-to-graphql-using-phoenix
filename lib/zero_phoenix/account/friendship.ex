defmodule ZeroPhoenix.Account.Friendship do
  use Ecto.Schema
  import Ecto.Changeset
  alias ZeroPhoenix.Account.Person
  alias ZeroPhoenix.Account.Friendship

  @required_fields [:person_id, :friend_id]

  schema "friendships" do
    belongs_to(:person, Person)
    belongs_to(:friend, Person)

    timestamps()
  end

  @doc false
  def changeset(%Friendship{} = friendship, attrs) do
    friendship
    |> cast(attrs, @required_fields)
    |> validate_required(@required_fields)
  end
end
