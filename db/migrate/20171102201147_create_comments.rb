class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :idea_id
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :comments, :idea_id
  end
end
