# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Event.create(title:"The Prince & the Wooglefoof", writers:"Christyn Budzyna", venue: "New World Stages", performers: "Dottie Cohen", price_range:"$20-$30", ticket_link:"http://www.facebook.com", video_link: "https://youtu.be/g9qMo7rDXRc", description:"Best show ever", approved?: false)

 Performance.create(start_time:"8:00pm", end_time:"10:00pm", date: Date.today, event_id: 1)
  Performance.create(start_time:"7:00pm", end_time:"9:00pm", date: Date.yesterday, event_id: 1)