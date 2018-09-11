user = User.create!(provider: "google_oauth2",
                    uid: "112748035832796518381",
                    email: "colinwarmstrong@gmail.com",
                    first_name: "Colin",
                    last_name: "Armstrong",
                    photo: "https://lh5.googleusercontent.com/-GeDOv0sdE4c/AAAAAAAAAAI/AAAAAAAAAI0/0nAevyxbB_M/photo.jpg",
                    token: ENV['USER_TOKEN'],
                    )

user.trips.create!(title: 'Cali Bros: A West Coast Adventure',
                   days: 6,
                   distance: 890,
                   buddies: 4)

user.trips.create!(title: 'Into the Corn: A Midwestern Excursion',
                  days: 8,
                  distance: 1236,
                  buddies: 2)

user.trips.create!(title: 'Gator Boys: A Journey Through Florida',
                  days: 4,
                  distance: 632,
                  buddies: 3)

user.trips.create!(title: 'Lobster Fest: A Relaxing Trip to Maine',
                  days: 5,
                  distance: 735,
                  buddies: 2)

user.trips.create!(title: 'Sin City: A Weekend in Vegas',
                  days: 3,
                  distance: 220,
                  buddies: 6)

user.trips.create!(title: 'BBQ Boys: The Texas Takeover',
                  days: 9,
                  distance: 1432,
                  buddies: 4)

puts "Created #{User.count} users"
puts "Created #{Trip.count} trips"
