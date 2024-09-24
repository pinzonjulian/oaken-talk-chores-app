class CreateContributors < ActiveRecord::Migration[7.2]
  def change
    create_table :contributors do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.belongs_to :chore, null: false, foreign_key: true
      t.belongs_to :membership, null: false, foreign_key: true

      t.timestamps
    end
  end
end
