class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :image_url
      
      t.timestamps
    end
  end
end
