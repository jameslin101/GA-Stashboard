class AddDescToServices < ActiveRecord::Migration
  def change
    add_column :services, :desc, :string
  end
end
