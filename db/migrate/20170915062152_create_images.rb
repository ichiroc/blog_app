class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :filename
      t.string :file
      t.string :content_type
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
