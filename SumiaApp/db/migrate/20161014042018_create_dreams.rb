class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :title
      t.datetime :data_time
      t.text :description

      t.timestamps null: false
    end
  end
end
