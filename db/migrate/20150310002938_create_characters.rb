class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :house
      t.string :birth_year
      t.string :death_year
      t.string :homeland
      t.string :bio

      t.timestamps null: true
    end
  end
end
