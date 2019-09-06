defmodule Househunter.Repo.Migrations.CreateProperties do
  use Ecto.Migration

  def change do
    create table(:properties) do
      add :location, :string
      add :type, :string
      add :bedrooms, :integer

      timestamps()
    end

  end
end
