defmodule Bmvp.Articles.Article do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "articles" do
    field :title, :string
    field :content, :string
    field :author_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :content, :author_id])
    |> validate_required([:title, :content])
  end
end
