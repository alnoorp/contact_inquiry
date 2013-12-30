class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
