class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post, foreign_key: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
