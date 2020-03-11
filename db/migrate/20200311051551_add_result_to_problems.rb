class AddResultToProblems < ActiveRecord::Migration[5.2]
  def change
    add_column :problems, :result, :string
  end
end
