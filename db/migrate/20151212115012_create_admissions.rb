class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.string :sname
      t.string :pname
      t.date :dob
      t.string :address
      t.string :city
      t.string :bldgrp
      t.string :course
      t.number :contact

      t.timestamps null: false
    end
  end
end
