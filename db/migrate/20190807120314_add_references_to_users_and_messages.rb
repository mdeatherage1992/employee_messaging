class AddReferencesToUsersAndMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :sender_id, :integer
    add_column :messages, :recipient_id, :integer
    add_column :messages, :body,:string
  end
end
