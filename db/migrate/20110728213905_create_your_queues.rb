class CreateYourQueues < ActiveRecord::Migration
  def self.up
    create_table :your_queues do |t|
      t.integer :user_id
      t.integer :clip_id

      t.timestamps
    end
  end

  def self.down
    drop_table :your_queues
  end
end
