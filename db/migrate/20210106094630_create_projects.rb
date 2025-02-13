class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :description
      t.date :creation_date
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
