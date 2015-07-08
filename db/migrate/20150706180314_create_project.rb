class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.references :responsible, index: true, foreign_key: true
    end
  end
end
