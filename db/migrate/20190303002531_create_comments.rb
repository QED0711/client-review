class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :text
      t.boolean :addressed, default: false
      t.string :response

      t.timestamps
    end
  end
end
