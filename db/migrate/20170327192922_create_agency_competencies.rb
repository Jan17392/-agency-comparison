class CreateAgencyCompetencies < ActiveRecord::Migration[5.0]
  def change
    create_table :agency_competencies do |t|
      t.references :competency, foreign_key: true
      t.references :agency, foreign_key: true

      t.timestamps
    end
  end
end
