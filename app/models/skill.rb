class Skill < ApplicationRecord
  has_many :researcher_skills
  has_many :researchers, through: :researcher_skills
end
