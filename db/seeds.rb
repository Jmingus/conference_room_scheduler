# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 Room.create([{ room_name: 'The Library of Rails Knowledge',
                 room_location: 'Building C',
                 room_description: 'Students pour over their technology books, to learn one more feature they can cram in to the app.',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112234.jpg'
               },
               { room_name: 'The Design Room',
                 room_location: 'Building C',
                 room_description: 'Smoke pours out from under their door, for they are SASS wizards!',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112247.jpg'
               },
               { room_name: 'The Kitchen of Foodstuffs',
                 room_location: 'Building C',
                 room_description: 'Weird place to have a conference, all things considered.',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112253.jpg'
               },
               { room_name: 'Blurry Photo Room',
                 room_location: 'Building C',
                 room_description: 'Great place for conferences, maybe, hard to see much',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112257.jpg'
               },
               { room_name: 'The Forgotten Room',
                 room_location: 'Building K',
                 room_description: 'Bats fly in and out, bringing cigar smoke with them, conference at your own risk.',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112547.jpg'
               },
               { room_name: 'The Yellow Room',
                 room_location: 'Building K',
                 room_description: 'The perfect room for sitting down, and getting a conference out of the way.',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112556.jpg'
               },
               { room_name: 'The Javascript Room',
                 room_location: 'Building K',
                 room_description: 'Not sure what goes on in this room, sure is big however.',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112613.jpg'
               },
               { room_name: 'The Vault',
                 room_location: 'Building K',
                 room_description: 'Not sure how much food is stored here.',
                 room_image: 'http://conferenceroom8662.s3.amazonaws.com/Dev+Photos/20150220_112628.jpg'
               }])