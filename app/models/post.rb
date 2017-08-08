class Post < ActiveRecord::Base
  include Voteable

  #set creator virtual attributes from User class to Post model
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :comments
  has_many :post_categories, dependent:  :destroy
  has_many :categories, -> { distinct }, through: :post_categories
  
  validates :title, :url, :description, presence: true
  validates_uniqueness_of :title


  before_create :generate_slug

  def generate_slug
    self.slug = self.title.gsub(/\W/, '-').downcase
  end

  def to_param
    self.slug
  end

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