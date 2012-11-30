class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.belongs_to :user
      t.string :auth_token
      t.string :application
      t.string :version

      t.timestamps
    end
    add_index :api_keys, :user_id
    add_index :api_keys, :auth_token
  end
end
