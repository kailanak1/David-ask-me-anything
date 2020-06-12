class ChangeCoinToBeStringInQuestions < ActiveRecord::Migration[6.0]
  def up
    change_column :questions, :coin, :string
  end

  def down
    change_column :questions, :coin, :integer
  end
end
