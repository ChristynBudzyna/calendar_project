class Event < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :performances, :dependent => :destroy
  accepts_nested_attributes_for :performances
  def format_video
    self.video_link.split('/').last if self.video_link
  end
end
