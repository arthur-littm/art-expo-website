class CreatePeintures < ActiveRecord::Migration[5.0]
  def change
    create_table :peintures do |t|
      t.string :titre
      t.string :description
      t.timestamps
    end
  end
end
