class CreateGemDownloads < ActiveRecord::Migration[5.1]
  def change
    create_table :gem_downloads do |t|
      t.integer :count
      t.references :rubygem, null: false, index: true
      t.references :version, null: false, index: true
    end
  end
end
