class CreateAgainsts < ActiveRecord::Migration[6.0]
  def change
    create_table :againsts do |t|
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps 
    end
  end
end 
