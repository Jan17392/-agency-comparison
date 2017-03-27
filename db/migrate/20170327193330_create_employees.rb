class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.references :agency, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :twitter_profile
      t.string :facebook_profile
      t.string :linkedin_profile

      t.timestamps
    end
  end
end
