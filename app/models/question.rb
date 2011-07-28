class Question < ActiveRecord::Base
  attr_accessible :clip_id, :user_id, :question
  belongs_to :clip
  belongs_to :user

  validates :question, :presence => true
end
