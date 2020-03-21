class CreateResearcherSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :researcher_skills do |t|
      t.references :researcher, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
