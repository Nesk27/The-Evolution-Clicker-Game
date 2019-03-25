class AddColumnLevel4CostLevel4 < ActiveRecord::Migration[5.2]
  def change
		add_column :players, :level4, :integer, :default => 0
		add_column :players, :level4_cost, :float, :default => 12000
  end
end
