class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :image
      t.string :affiliate
      t.string :duration

      t.timestamps
    end
  end
end
