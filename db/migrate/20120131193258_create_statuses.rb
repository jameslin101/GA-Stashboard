class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.datetime :etime
      t.integer :stat
      t.string :message
      t.integer :service_id
      t.timestamps
    end
    add_index :statuses, :service_id
  end
end
