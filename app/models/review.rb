class Review < ApplicationRecord
  belongs_to :user
  belongs_to :agency
  belongs_to :competency
end
