class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :name
      t.string :description
      t.string :email

      t.references :director

      t.timestamps
    end
  end
end
