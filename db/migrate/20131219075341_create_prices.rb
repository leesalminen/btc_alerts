class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :rate, precision: 10, scale: 2, null: false
      t.datetime default: 'now()'
      t.string :source, limit: 50, null: false

      t.timestamps
    end
  end
end
