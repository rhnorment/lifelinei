class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.integer   :number
      t.string    :question
      t.text      :answer
      t.timestamps
    end
  end
end
