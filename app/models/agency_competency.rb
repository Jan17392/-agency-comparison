class AgencyCompetency < ApplicationRecord
  belongs_to :competency
  belongs_to :agency
end
