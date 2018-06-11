defmodule Moo.Identity.Adress do
  use Ecto.Schema
  import Ecto.Changeset


  schema "adresses" do
    field :adress, :string
    field :post_number, :integer
    field :city, :string
    field :country, :string
    belongs_to :user, Moo.Identity.User
    timestamps()
  end

  def changeset(adress, attrs) do
    adress
    |> cast(attrs, [:adress, :number, :city, :country, :user_id])
    |> validate_required([:adress, :post_number, :city, :country, :user_id])
  end
end
