class AddFieldsToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :total_score, :integer
    add_column :surveys, :unacceptable_scores, :integer
  end
end
