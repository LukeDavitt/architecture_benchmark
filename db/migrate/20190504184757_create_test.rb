class CreateTest < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.references :algorithm
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
