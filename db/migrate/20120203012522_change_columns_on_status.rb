class ChangeColumnsOnStatus < ActiveRecord::Migration
  def up
    change_column :statuses, :stat, :string
    rename_column :statuses, :etime, :time
    rename_column :statuses, :stat, :state    
  end

  def down
    raise ActiveRecord::IrreversibleMigration.new
  end
end
