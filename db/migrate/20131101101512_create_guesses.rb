class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :round_id
      t.boolean :attempt
      t.timestamps
    end
  end
end
