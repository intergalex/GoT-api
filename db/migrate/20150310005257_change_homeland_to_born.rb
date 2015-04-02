class ChangeHomelandToBorn < ActiveRecord::Migration
  def change
      add_column :characters, :born, :string
      remove_column :characters, :homeland, :string
  end
end
