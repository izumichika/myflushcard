class ChangeDataAnserToProblems < ActiveRecord::Migration[5.2]
  def change
    change_column :problems, :anser, :string
  end
end
