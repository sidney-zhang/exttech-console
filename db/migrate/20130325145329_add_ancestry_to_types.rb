class AddAncestryToTypes < ActiveRecord::Migration
  def change
    add_column :types, :ancestry, :string
  end
    def self.up  
    add_column :types, :ancestry, :string  
    add_index :types, :ancestry  
  end  
  
  def self.down  
    remove_index :types, :ancestry  
    remove_column :types, :ancestry  
  end  
end
