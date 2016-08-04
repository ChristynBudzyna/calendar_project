class Event < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :performances, :dependent => :destroy
  accepts_nested_attributes_for :performances, reject_if: :all_blank, allow_destroy: true

  def format_video
    self.video_link.split('/').last if self.video_link
  end

   def event_complete?
    self.performances.length >= 3
  end

end
