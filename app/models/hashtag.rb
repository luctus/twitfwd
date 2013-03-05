class Hashtag < ActiveRecord::Base
  belongs_to :user
  attr_accessible :forward_to, :tag

  def meaning
  	return "Every time #{user.nickname} tag a tweet with #{tag}, that tweet will be twitted again by #{forward_to}"
  end
end
