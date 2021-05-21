class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :city_id,               null: false
      t.text    :explain,               null: false
    
      t.timestamps
    end
  end
end
