class PagesController < ApplicationController

def thankyou
  render 'pages/thankyou'
end

def admin
@events = Event.where(approved: false)
end

end
