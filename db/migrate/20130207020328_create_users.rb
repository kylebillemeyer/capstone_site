class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :url
      t.string :role
      t.text   :desc

      t.timestamps
    end
  end
end
