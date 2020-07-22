class RemoveDetailsToGroups < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :details, :text
  end
end
