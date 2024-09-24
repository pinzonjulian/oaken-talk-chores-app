class CreateChores < ActiveRecord::Migration[7.2]
  def change
    create_table :chores do |t|
      t.string :name
      t.belongs_to :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
