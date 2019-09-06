defmodule Househunter.ListingsTest do
  use Househunter.DataCase

  alias Househunter.Listings

  describe "properties" do
    alias Househunter.Listings.Property

    @valid_attrs %{bedrooms: 42, location: "some location", type: "some type"}
    @update_attrs %{bedrooms: 43, location: "some updated location", type: "some updated type"}
    @invalid_attrs %{bedrooms: nil, location: nil, type: nil}

    def property_fixture(attrs \\ %{}) do
      {:ok, property} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Listings.create_property()

      property
    end

    test "list_properties/0 returns all properties" do
      property = property_fixture()
      assert Listings.list_properties() == [property]
    end

    test "get_property!/1 returns the property with given id" do
      property = property_fixture()
      assert Listings.get_property!(property.id) == property
    end

    test "create_property/1 with valid data creates a property" do
      assert {:ok, %Property{} = property} = Listings.create_property(@valid_attrs)
      assert property.bedrooms == 42
      assert property.location == "some location"
      assert property.type == "some type"
    end

    test "create_property/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Listings.create_property(@invalid_attrs)
    end

    test "update_property/2 with valid data updates the property" do
      property = property_fixture()
      assert {:ok, %Property{} = property} = Listings.update_property(property, @update_attrs)
      assert property.bedrooms == 43
      assert property.location == "some updated location"
      assert property.type == "some updated type"
    end

    test "update_property/2 with invalid data returns error changeset" do
      property = property_fixture()
      assert {:error, %Ecto.Changeset{}} = Listings.update_property(property, @invalid_attrs)
      assert property == Listings.get_property!(property.id)
    end

    test "delete_property/1 deletes the property" do
      property = property_fixture()
      assert {:ok, %Property{}} = Listings.delete_property(property)
      assert_raise Ecto.NoResultsError, fn -> Listings.get_property!(property.id) end
    end

    test "change_property/1 returns a property changeset" do
      property = property_fixture()
      assert %Ecto.Changeset{} = Listings.change_property(property)
    end
  end
end
