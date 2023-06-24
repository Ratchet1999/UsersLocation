class CreateCountryUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :country_users, id: false do |t|
      t.belongs_to :u, foreign_key: { to_table: :users, primary_key: :id1 }
      t.belongs_to :c, foreign_key: { to_table: :countries, primary_key: :id2 }
      
      t.timestamps
    end
  end
end
