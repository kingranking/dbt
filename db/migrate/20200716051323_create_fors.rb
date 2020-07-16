class CreateFors < ActiveRecord::Migration[6.0]
  def change
    create_table :fors do |t|

      t.timestamps
    end
  end
end
