class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :question, :limit => 500
      t.string :answer

      t.timestamps
    end
  end
end
