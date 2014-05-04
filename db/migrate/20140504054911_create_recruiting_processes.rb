class CreateRecruitingProcesses < ActiveRecord::Migration
  def change
    create_table :recruiting_processes do |t|
      t.string :name
      t.date :target_end_date
      t.string :position

      t.timestamps
    end
  end
end
