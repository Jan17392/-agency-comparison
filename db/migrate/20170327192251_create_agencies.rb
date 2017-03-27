class CreateAgencies < ActiveRecord::Migration[5.0]
  def change
    create_table :agencies do |t|
      t.string :name
      t.integer :number_of_staff
      t.decimal :annual_revenue
      t.decimal :hourly_rate
      t.string :slogan
      t.string :description
      t.decimal :min_project_size
      t.string :website
      t.string :phone
      t.string :behance_profile
      t.string :facebook_profile
      t.string :twitter_profile
      t.string :linkedin_profile
      t.references :user, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
