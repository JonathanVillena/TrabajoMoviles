class CreateInterpretations < ActiveRecord::Migration
  def change
    create_table :interpretations do |t|
      t.text :comment

      t.timestamps null: false
    end
  end
end
