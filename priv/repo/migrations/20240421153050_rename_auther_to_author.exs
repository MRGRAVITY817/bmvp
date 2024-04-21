defmodule Bmvp.Repo.Migrations.RenameAutherToAuthor do
  use Ecto.Migration

  def change do
    rename table(:articles), :auther_id, to: :author_id
  end
end
