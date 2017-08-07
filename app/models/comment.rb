class Comment < ActiveRecord::Base
  include Voteable

  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  belongs_to :post

  validates :body, presence: true

  def likes
    votes.where(vote: true).length    
  end

  def dislikes
    votes.where(vote: false).length
  end
end