class AddDateToNewStuffs < ActiveRecord::Migration[6.1]
  def change
    add_column :new_stuffs, :date, :date
  end
end
