class CreateResearcherThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :researcher_themes do |t|
      t.references :researcher, null: false, foreign_key: true
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
