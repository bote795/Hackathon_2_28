class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user
      t.integer :gpa

      t.timestamps
    end
  end
end
