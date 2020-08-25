a = Author.create email: 'shawnpk29@me.com', password: 'fakepass', password_confirmation: 'fakepass'

Post.create title: "Polaroid's new mobile printer turns your iPhone photos into stickers", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Arcu vitae elementum curabitur vitae nunc sed.", author_id: a.id
Post.create title: "The internet is turning 'Fall Guys' into the game of the summer", description: "Quis ipsum suspendisse ultrices gravida dictum fusce. Adipiscing enim eu turpis egestas pretium aenean. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant.", author_id: a.id
Post.create title: "Sega’s Dreamcast is the unsung gaming hero of the 2000s", description: "Eros in cursus turpis massa. Amet tellus cras adipiscing enim. Condimentum id venenatis a condimentum vitae. Tellus id interdum velit laoreet id donec ultrices. ", author_id: a.id

puts "Created #{Author.count} authors"
puts "Created #{Post.count} posts"