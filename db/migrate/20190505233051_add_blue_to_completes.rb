class AddBlueToCompletes < ActiveRecord::Migration[5.2]
  def change
    add_column :completes, :blue, :boolean
  end
end
