class Event < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :performances

  def format_video
    self.video_link.split('/').last if self.video_link
  end
end
