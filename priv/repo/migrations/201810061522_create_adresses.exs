defmodule Moo.Repo.Migrations.CreateAdresses do
  use Ecto.Migration

  def change do
    create table(:adresses) do
      add :adress, :string
      add :post_number, :integer
      add :city, :string
      add :country, :string

      timestamps()
    end

  end
end
