# frozen_string_literal: true

class CreateConversations < ActiveRecord::Migration[7.1]
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.timestamps
    end

    add_index :conversations, %i[recipient_id sender_id], unique: true
  end
end
