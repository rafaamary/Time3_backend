class CreateCompetences < ActiveRecord::Migration[6.1]
  def change
    create_table :competences do |t|
      t.string :group
      t.string :title
      t.string :description
      t.string :evidence
      t.string :materials
      t.integer :user_id

      t.timestamps
    end
  end
end
