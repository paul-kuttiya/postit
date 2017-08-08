class Comment < ActiveRecord::Base
  include Voteable

  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  belongs_to :post

  validates :body, presence: true

  def likes
    find_vote(true).length    
  end

  def dislikes
    find_vote(false).length
  end

  def like_by
    find_vote_users(true)
  end

  def dislike_by
    find_vote_users(false)
  end

  def votes_query(count=10)
    result = []
    
    votes.first(count).each do |vote|
      result << {user: User.find(vote.user_id), vote: vote.vote}
    end

    result
  end

  private
  def find_vote(boolean)
    votes.where(vote: boolean)
  end

  def find_vote_users(boolean)
    find_vote(boolean).map {|v| User.find(v.user_id)}
  end
end