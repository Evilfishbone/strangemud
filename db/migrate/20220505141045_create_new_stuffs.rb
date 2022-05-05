class CreateNewStuffs < ActiveRecord::Migration[6.1]
  def change
    create_table :new_stuffs do |t|
      t.string :title
      t.text :news

      t.timestamps
    end
  end
end
