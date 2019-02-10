class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :member, index: true
      t.string :status, default: 'pending'
      t.float :estimate
      t.float :actualEffort, default: 0
      t.date :startDate
      t.date :endDate
      t.text :notes
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
