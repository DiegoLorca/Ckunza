class AddMenuToFood < ActiveRecord::Migration[5.1]
  def change
    add_reference :foods, :menu, foreign_key: true
  end
end
