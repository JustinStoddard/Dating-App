class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name_first
      t.string :last_name
      t.string :age
      t.string :hair_color
      t.string :eye_color
      t.string :alive
      t.string :pic_url

      t.timestamps
    end
  end
end
