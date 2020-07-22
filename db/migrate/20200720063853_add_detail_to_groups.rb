class AddDetailToGroups < ActiveRecord::Migration[6.0]
  def change
    add_column :groups, :detail, :text
  end
end
