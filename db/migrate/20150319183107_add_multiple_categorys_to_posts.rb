class AddMultipleCategorysToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :categorytwo, :string
    add_column :posts, :categorythree, :string
    add_column :posts, :categoryfour, :string
  end
end
