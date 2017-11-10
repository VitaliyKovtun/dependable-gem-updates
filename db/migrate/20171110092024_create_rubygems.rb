class CreateRubygems < ActiveRecord::Migration[5.1]
  def change
    create_table :rubygems do |t|
      t.string :name, null: false, unique: true
      t.datetime :created_at
      t.datetime :updated_at
      t.string :slug, null: false
    end
  end
end
