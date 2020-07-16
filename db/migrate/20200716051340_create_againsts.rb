class CreateAgainsts < ActiveRecord::Migration[6.0]
  def change
    create_table :againsts do |t|

      t.timestamps
    end
  end
end
