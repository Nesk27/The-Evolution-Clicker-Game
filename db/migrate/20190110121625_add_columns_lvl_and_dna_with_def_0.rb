class AddColumnsLvlAndDnaWithDef0 < ActiveRecord::Migration[5.2]
  def change
	add_column :players, :level, :integer, :default => 0
	add_column :players, :dna, :float, :default => 0
  end
end
