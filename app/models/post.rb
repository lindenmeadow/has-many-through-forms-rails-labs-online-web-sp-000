class Post < ActiveRecord::Base

  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, :comments

  def unique_commentors
    self.comments.collect {|c| c.user}.uniq
  end

end
