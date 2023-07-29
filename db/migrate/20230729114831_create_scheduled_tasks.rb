class CreateScheduledTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :scheduled_tasks, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC' do |t|
      t.references :date_task, foreign_key: true, null: false
      t.string :title, null: false
      t.string :priority, null: false
      t.string :status, null: false
      t.date :registration_date, null: false
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
