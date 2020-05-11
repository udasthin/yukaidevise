class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :rank
      t.integer :win
      t.integer :lose
      t.integer :goal
      t.integer :user_id
      t.timestamps
    end
  end
end
