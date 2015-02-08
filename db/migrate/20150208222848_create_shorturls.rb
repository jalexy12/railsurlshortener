class CreateShorturls < ActiveRecord::Migration
  def change
    create_table :shorturls do |t|
      t.text :longurl

      t.timestamps null: false
    end
  end
end
