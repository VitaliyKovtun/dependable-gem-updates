class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :gem_name, null: false
      t.float :from_version, null: false
      t.float :to_version, null: false
    end
  end
end
