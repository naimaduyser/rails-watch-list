class AddPhotoToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :photo, :string
  end
end
