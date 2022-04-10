class CreateCompetences < ActiveRecord::Migration[6.1]
  def change
    create_table :competences do |t|
      t.string :title
      t.string :group
      t.string :evidence
      t.integer :user_id

      t.timestamps
    end
  end
end
