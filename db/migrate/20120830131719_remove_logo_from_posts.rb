class RemoveLogoFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :logo
  end

  def down
    add_column :posts, :logo
  end
end
