class Event < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :performances, :dependent => :destroy
  accepts_nested_attributes_for :performances, allow_destroy: true, :reject_if => lambda {|a|[:date].blank? }

  def format_video
    self.video_link.split('/').last if self.video_link
  end

   def event_complete?
    self.performances.length >= 3
  end

end
