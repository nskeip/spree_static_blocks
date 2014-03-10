class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :spree_blocks do |t|
      t.string :code, null: false
      t.text :text

      t.timestamps
    end
  end
end
