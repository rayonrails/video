class CreateClips < ActiveRecord::Migration
  def self.up
    create_table :clips do |t|
      t.string :title
      t.text :description
      t.string :clip_file_name
      t.string :clip_content_type
      t.integer :clip_file_size
      t.datetime :clip_update_at
      t.boolean :live
      t.integer :category_id
      t.integer :channel_id
      t.integer :user_id
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :clips
  end
end
