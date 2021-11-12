class AddCountryToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :country, :string
  end
end
