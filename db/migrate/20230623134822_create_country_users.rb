class CreateCountryUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :country_users, id: false do |t|
      t.integer :c_id
      t.integer :u_id
      
      t.timestamps
    end
  end
end
