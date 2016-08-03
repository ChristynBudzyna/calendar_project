# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Event.create(title:"The Prince & the Wooglefoof", writers:"Christyn Budzyna", venue: "New World Stages", performers: "Dottie Cohen", price_range:"$20-$30", ticket_link:"http://www.facebook.com", video_link: "https://youtu.be/g9qMo7rDXRc", description:"Best show ever", approved: true, user_id: 2)

  Event.create(title:"The Prince's New Pet'", writers:"Christyn Budzyna", venue: "New World Stages", performers: "Dottie Cohen", price_range:"$20-$30", ticket_link:"http://www.facebook.com", video_link: "https://youtu.be/g9qMo7rDXRc", description:"Best show ever", approved: true, user_id: 2)

   Event.create(title:"NOT APPROVED", writers:"Christyn Budzyna", venue: "New World Stages", performers: "Dottie Cohen", price_range:"$20-$30", ticket_link:"http://www.facebook.com", video_link: "https://youtu.be/g9qMo7rDXRc", description:"Best show ever", approved: false, user_id: 2)


 Performance.create(start:"{1=>1, 2=>1, 3=>1, 4=>20, 5=>0}", date: Date.today, event_id: 1)
  Performance.create(start:"{1=>1, 2=>1, 3=>1, 4=>20, 5=>0}", date: Date.yesterday, event_id: 1)
  Performance.create(start:"{1=>1, 2=>1, 3=>1, 4=>20, 5=>0}", date: Date.today, event_id: 2)
  Performance.create(start:"{1=>1, 2=>1, 3=>1, 4=>20, 5=>0}", date: Date.today, event_id: 3)

User.create(email:"admin@admin.com", password:"adminadmin", role:"Director", admin?:true)

User.create(email:"person@person.com", password:"personperson", role:"Actor", admin?:true)