class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :pname
      t.text :pcontent
      t.integer :pid
      t.date :pdate

      t.timestamps null: false
    end
  end
end
