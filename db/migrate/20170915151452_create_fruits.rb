class CreateFruits < ActiveRecord::Migration[5.1]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :location
      t.string :description
      t.string :img_url
      
      t.timestamps
    end
  end
end
