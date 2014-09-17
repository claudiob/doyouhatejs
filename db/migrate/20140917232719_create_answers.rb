class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :yes_or_no

      t.timestamps
    end
  end
end
