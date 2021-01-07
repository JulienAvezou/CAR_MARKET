class CreateCarFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :car_files do |t|
      t.string :name
      t.string :pros
      t.string :cons

      t.timestamps
    end
  end
end
