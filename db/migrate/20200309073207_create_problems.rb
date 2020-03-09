class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.integer :question, null: false
      t.integer :anser, null: false
      t.timestamps
    end
  end
end
