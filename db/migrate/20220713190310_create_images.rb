class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :title, null: true
      t.text :description, null: true

      t.timestamps
    end
  end
end
