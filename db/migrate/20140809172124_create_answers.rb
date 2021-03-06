class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :correct
      t.belongs_to :question

      t.timestamps
    end
  end
end
