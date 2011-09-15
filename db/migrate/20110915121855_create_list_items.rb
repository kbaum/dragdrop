class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :name
      t.string :list_id
      t.integer :position

      t.timestamps
    end
  end
end
