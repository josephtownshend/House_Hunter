defmodule HousehunterWeb.Resolvers.Listings do
  alias Househunter.Listings

  def properties(_, _, _) do
    {:ok, Listings.list_properties()}
  end

  def property(_, %{id: id}, _) do
    {:ok, Listings.get_property!(id)}
  end
end
