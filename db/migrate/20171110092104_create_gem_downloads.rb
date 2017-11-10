class CreateGemDownloads < ActiveRecord::Migration[5.1]
  def change
    create_table :gem_downloads do |t|
      t.bigint :count
      t.references :rubygem, index: true
      t.references :version, index: true
    end
  end
end
