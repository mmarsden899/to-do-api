class AddPinkToCompletes < ActiveRecord::Migration[5.2]
  def change
    add_column :completes, :pink, :boolean
  end
end
