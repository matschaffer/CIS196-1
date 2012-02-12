class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.belongs_to :user
      t.belongs_to :group

      t.timestamps
    end
    add_index :groupings, :user_id
    add_index :groupings, :group_id
  end
end
