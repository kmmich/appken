class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number

      t.timestamps
    end
  end
end
