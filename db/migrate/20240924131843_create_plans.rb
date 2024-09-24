class CreatePlans < ActiveRecord::Migration[7.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :price_in_cents

      t.timestamps
    end
  end
end
