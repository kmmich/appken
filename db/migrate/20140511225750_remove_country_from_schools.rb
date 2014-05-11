class RemoveCountryFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :country, :string
  end
end
