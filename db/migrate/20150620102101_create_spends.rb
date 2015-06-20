class CreateSpends < ActiveRecord::Migration

  def change
    create_table :spends do |t|
      t.references :location
      t.references :supplier
      t.integer :amount
    end
  end

end
