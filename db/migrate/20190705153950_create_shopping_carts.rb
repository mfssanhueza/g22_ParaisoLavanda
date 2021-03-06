class CreateShoppingCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_carts do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.boolean :payed, default: false
      t.timestamps
    end
  end
end
