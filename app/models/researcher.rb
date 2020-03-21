class Researcher < ApplicationRecord

  has_many :researcher_skills
  has_many :skills, through: :researcher_skills
  accepts_nested_attributes_for :researcher_skills

  has_many :researcher_themes
  has_many :themes, through: :researcher_themes
  accepts_nested_attributes_for :researcher_themes
  
end
