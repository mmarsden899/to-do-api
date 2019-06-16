class AddPurpleToCompletes < ActiveRecord::Migration[5.2]
  def change
    add_column :completes, :purple, :boolean
  end
end
