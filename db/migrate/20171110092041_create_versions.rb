class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      enable_extension 'hstore'
      t.string :name, null: false
      t.text :authors
      t.text :description
      t.integer :number
      t.datetime :built_at
      t.datetime :updated_at
      t.text :summary
      t.string :platform
      t.datetime :created_at
      t.boolean :indexed, default: true
      t.boolean :prerelease
      t.integer :position
      t.boolean :latest
      t.string :full_name
      t.string :licenses
      t.integer :size
      t.text :requirements
      t.string :required_ruby_version
      t.string :sha256
      t.hstore :metadata, null: false, default: ''
      t.string :required_rubygems_version
      t.datetime :yanked_at
      t.string :info_checksum
      t.string :yanked_info_checksum
      t.references :rubygem, null: false, index: true
    end
  end
end
