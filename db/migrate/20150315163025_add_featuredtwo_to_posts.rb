class AddFeaturedtwoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :featuredtwo, :string
  end
end
