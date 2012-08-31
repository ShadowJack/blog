class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :post
      t.references :tag
    end
  end
end
