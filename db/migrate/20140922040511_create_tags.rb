class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :hashtags
      t.references :user

      t.timestamps
    end
  end
end
