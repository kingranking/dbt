class AddDetailsToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :details, :text
  end
end
