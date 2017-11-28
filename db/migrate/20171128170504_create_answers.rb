class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.column :user_id, :integer
      t.column :question_id, :integer
      t.column :answer_body, :text

      t.timestamps
    end
  end
end
