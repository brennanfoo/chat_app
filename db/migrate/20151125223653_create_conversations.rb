class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.string :recipient_id
      t.string :integer

      t.timestamps
    end

    add_index :conversations, :sender_id
    add_index :conversations, :recipient_id
  end
end
