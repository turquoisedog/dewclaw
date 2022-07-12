class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :display_name, :string
    add_column :users, :pronouns, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :handle, :string
  end
end
