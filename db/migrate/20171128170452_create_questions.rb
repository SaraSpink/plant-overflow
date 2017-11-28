class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :user_id, :integer
      t.column :question_body, :text

      t.timestamps
    end
  end
end
