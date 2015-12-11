class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :ename
      t.text :edesc

      t.timestamps null: false
    end
  end
end
