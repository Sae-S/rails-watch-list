class ChangeContentToComment < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookmarks, :content, :comment
  end
end
