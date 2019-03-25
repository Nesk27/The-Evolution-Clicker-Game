class AddColumnLevel5CostLevel5 < ActiveRecord::Migration[5.2]
  def change
		add_column :players, :level5, :integer, :default => 0
		add_column :players, :level5_cost, :float, :default => 50000
  end
end
