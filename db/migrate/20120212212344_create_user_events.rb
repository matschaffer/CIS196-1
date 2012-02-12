class CreateUserEvents < ActiveRecord::Migration
  def change
    create_table :user_events do |t|
      t.belongs_to :user
      t.belongs_to :event

      t.timestamps
    end
    add_index :user_events, :user_id
    add_index :user_events, :event_id
  end
end
