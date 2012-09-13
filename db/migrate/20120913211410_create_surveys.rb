class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string    :survey_code
      t.string    :business_name
      t.integer   :knowledge_rating
      t.text      :knowledge_comment
      t.integer   :availability_rating
      t.text      :availability_comment
      t.integer   :instructor_rating
      t.text      :instructor_comment
      t.integer   :conditions_rating
      t.text      :conditions_comment
      t.integer   :opinion_rating
      t.text      :opinion_comment
      t.timestamps
    end
    add_index     :surveys, :survey_code
  end
end
