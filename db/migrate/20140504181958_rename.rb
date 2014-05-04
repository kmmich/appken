class Rename < ActiveRecord::Migration
  def change
    rename_table :recruiting_processes, :campaigns
  end
end
