class CreateRubygems < ActiveRecord::Migration[5.1]
  def change
    create_table :rubygems do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at
      t.string :slug
    end
  end
end
