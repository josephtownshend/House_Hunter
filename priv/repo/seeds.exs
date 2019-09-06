# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Househunter.Repo.insert!(%Househunter.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Househunter.Repo
alias Househunter.Listings.Property

%Property{
  location: "Peckham",
  type: "Flat",
  bedrooms: 2
} |> Repo.insert!

%Property{
  location: "Hoxton",
  type: "House",
  bedrooms: 4
} |> Repo.insert!

%Property{
  location: "Mile End",
  type: "Flat",
  bedrooms: 1
} |> Repo.insert!

%Property{
  location: "Peckham",
  type: "House",
  bedrooms: 2
} |> Repo.insert!

%Property{
  location: "Mile End",
  type: "House",
  bedrooms: 4
} |> Repo.insert!

%Property{
  location: "Hoxton",
  type: "Flat",
  bedrooms: 1
} |> Repo.insert!
