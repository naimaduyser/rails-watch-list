class AddListIdToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_column :bookmarks, :list_id, :integer
  end
end
