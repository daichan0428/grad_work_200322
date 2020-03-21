class CreateResearchers < ActiveRecord::Migration[6.0]
  def change
    create_table :researchers do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.text :comment

      t.timestamps
    end
  end
end
