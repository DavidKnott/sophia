class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.datetime :updated_at, null: false
      t.datetime :created_at, null: false
    end
  end
end
