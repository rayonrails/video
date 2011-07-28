class Clip < ActiveRecord::Base
  attr_accessible :title, :description, :clip_file_name, :clip_content_type, :clip_file_size, :clip_update_at, :live, :category_id, :channel_id, :user_id, :position
  belongs_to :category
  belongs_to :channel
  has_many :questions, :dependent => :destroy
  belongs_to :user

  has_many :your_queues
  has_many :your_queues, :through => :users

  validates :title, :description, :presence => true

end
