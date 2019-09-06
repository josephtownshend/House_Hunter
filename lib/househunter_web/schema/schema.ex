defmodule HousehunterWeb.Schema.Schema do
  use Absinthe.Schema

  query do
    @desc "Get a list of properties"
    field :properties, list_of(:property) do
      resolve &HousehunterWeb.Resolvers.Listings.properties/3
    end

    @desc "Get a place by its id"
    field :property, :property do
      arg :id, non_null(:id)
      resolve &HousehunterWeb.Resolvers.Listings.property/3
    end
  end

  object :property do
    field :id, non_null(:id)
    field :location, non_null(:string)
    field :type, non_null(:string)
    field :bedrooms, non_null(:integer)
  end
end
