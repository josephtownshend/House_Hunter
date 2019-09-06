defmodule Househunter.Listings.Property do
  use Ecto.Schema
  import Ecto.Changeset

  schema "properties" do
    field :bedrooms, :integer
    field :location, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(property, attrs) do
    property
    |> cast(attrs, [:location, :type, :bedrooms])
    |> validate_required([:location, :type, :bedrooms])
  end
end
