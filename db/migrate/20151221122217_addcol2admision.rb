class Addcol2admision < ActiveRecord::Migration
  def change
  	remove_column :admissions, :contact
  	add_column :admissions, :contact, :string
  end
end
