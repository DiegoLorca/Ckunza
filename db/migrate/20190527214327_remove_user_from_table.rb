class RemoveUserFromTable < ActiveRecord::Migration[5.1]
  def change
    remove_reference :tables, :user, foreign_key: true
  end
end
