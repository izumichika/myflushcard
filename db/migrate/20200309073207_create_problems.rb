class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :question, null: false
      t.string :anser, null: false
      t.string :result
      t.timestamps
    end
  end
end  