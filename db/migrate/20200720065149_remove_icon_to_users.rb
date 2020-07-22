class RemoveIconToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :icon, :string
  end
end
