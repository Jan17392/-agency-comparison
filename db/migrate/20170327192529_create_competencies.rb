class CreateCompetencies < ActiveRecord::Migration[5.0]
  def change
    create_table :competencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
