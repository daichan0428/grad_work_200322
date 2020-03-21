class Theme < ApplicationRecord
  has_many :researcher_themes
  has_many :researchers, through: :researcher_themes
end
