class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.decimal :rating
      t.references :user, foreign_key: true
      t.references :agency, foreign_key: true
      t.string :comment
      t.references :competency, foreign_key: true
      t.decimal :price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
