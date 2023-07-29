class CreateDateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :date_tasks, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC' do |t|
      t.date :date, null: false

      t.timestamps
    end
  end
end
