class ChangeDataQuestionToProblems < ActiveRecord::Migration[5.2]
  def change
    change_column :problems, :question, :string
  end
end
