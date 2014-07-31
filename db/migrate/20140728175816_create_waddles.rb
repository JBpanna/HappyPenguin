class CreateWaddles < ActiveRecord::Migration
  def change
    create_table :waddles do |t|
      t.string :name
      t.string :birthday
      t.string :height
      t.string :dance_type

      t.timestamps
    end
  end
end
