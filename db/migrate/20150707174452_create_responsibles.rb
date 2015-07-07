class CreateResponsibles < ActiveRecord::Migration
  def change
    create_table :responsibles do |t|
      t.string :name
      t.string :email
      t.references :project, index: true, foreign_key: true
    end
  end
end
