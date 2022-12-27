class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :user_id, :user, foreign_keys: true
      t.timestamps
    end
  end
end
