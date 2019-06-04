class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.boolean :done, default: false
      t.references :user, foreign_key: true
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
