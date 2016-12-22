class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :answer
      t.integer :popularity
      t.datetime :updated_at,    null: false
      t.datetime :created_at,    null: false
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
