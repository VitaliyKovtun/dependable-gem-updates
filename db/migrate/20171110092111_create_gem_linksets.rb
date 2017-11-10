class CreateGemLinksets < ActiveRecord::Migration[5.1]
  def change
    create_table :linksets do |t|
      t.string :home
      t.string :wiki
      t.string :docs
      t.string :mail
      t.string :code
      t.string :bugs
      t.datetime :created_at
      t.datetime :updated_at
      t.references :rubygem, null: false, index: true
    end
  end
end
