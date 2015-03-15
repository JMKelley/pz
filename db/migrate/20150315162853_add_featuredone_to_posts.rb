class AddFeaturedoneToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :featuredone, :string
  end
end
