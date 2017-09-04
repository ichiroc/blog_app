class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :published_at
      t.string :url_path
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
