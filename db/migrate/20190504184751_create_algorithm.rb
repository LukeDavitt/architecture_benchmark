class CreateAlgorithm < ActiveRecord::Migration[5.2]
  def change
    create_table :algorithms do |t|
      t.string :title
    end
  end
end
