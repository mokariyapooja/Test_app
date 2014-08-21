class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :technology
      t.string :start_date
      t.string :submission_date

      t.timestamps
    end
  end
end
