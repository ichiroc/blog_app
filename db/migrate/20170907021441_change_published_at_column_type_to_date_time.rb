class ChangePublishedAtColumnTypeToDateTime < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :published_at, :datetime
  end
end
