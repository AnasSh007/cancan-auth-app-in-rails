class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :question_id, :question, foreign_key: true
      t.integer :user_id, foreign_keys: true
      t.timestamps
    end
  end
end
