class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name,null: false
      t.string :memo
      t.references  :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
