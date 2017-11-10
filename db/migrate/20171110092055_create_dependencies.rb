class CreateDependencies < ActiveRecord::Migration[5.1]
  def change
    create_table :dependencies do |t|
      t.string :requirements
      t.datetime :created_at
      t.datetime :updated_at
      t.string :scope
      t.string :unresolved_name
      t.references :rubygem, null: false, index: true
      t.references :version, null: false, index: true
    end
  end
end
