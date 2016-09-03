@jz = User.create!(username: "Jahanzeb Khan", full_name: "Jahanzeb Khan", description: nil, provider: "facebook", uid: "1037267503034514", email: "jahanzeb-khan_94@hotmail.com", encrypted_password: "$2a$11$pmGq9kZ2xAVx6y3vdiIF2OX4GN0RfcyNaJimlOYTzc4O3yccnwbXe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-08-30 20:03:12", last_sign_in_at: "2016-08-29 21:54:53", current_sign_in_ip: "::1", last_sign_in_ip: "::1")
@ad = User.create!(username: "alecksduong", full_name: "Alecks Duong", description: nil, provider: nil, uid: nil, email: "alecks.duong@gmail.com", encrypted_password: "$2a$11$gPLtLtbAO6BxHE8D3Vr8Aul796QRHLnVMfCHBr14z/Cay1uY9N8T6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil)
@ag = User.create!(username: "alexgomez", full_name: "Alejandro Gomez", description: "I like good code.", provider: nil, uid: nil, email: "alex.gomez@gmail.com", encrypted_password: "$2a$11$z3gGUbKIAPgfnJtu9WHQJOpval86iufjnyvjeobBWcWgpvjBWvOXW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil)
@nk = User.create!(username: "naomikoo", full_name: "Naomi Koo", description: "I kool", provider: nil, uid: nil, email: "naomi.koo@gmail.com", encrypted_password: "$2a$11$.pcmL4UfZ4rKgOtuL4uX1.iThy4XMV4PEzCJ2hi6FBklmBlMdCa1q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil)
@ur = User.create!(username: "unruli", full_name: "Ru Li", description: nil, provider: nil, uid: nil, email: "ru.li@gmail.com", encrypted_password: "$2a$11$Rfdzvz8.n6qbGtlNHmaXk.ndKVZphBpQSMmtJfmRDJgWhsBvfaaC6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil)

@trip_1 = Itinerary.create!(user_id: @jz.id, city: "Kitchener, ON, CA", name: "The Grand Kitchener Tour", price: "0.0", description: "funnn", total_capacity: 20, spots_sold: 2, start_time: "2016-08-31 13:35:21", end_time: "2016-09-03 13:35:25", pic_url: "", date: "2016-08-29")
@trip_2 = Itinerary.create!(user_id: @ad.id, city: "Rome", name: "Collosium Spelling Trip", price: "420.0", description: "We roman, we cool.", total_capacity: 4, spots_sold: 1, start_time: "2016-08-31 13:35:21", end_time: "2016-09-03 13:35:25", pic_url: nil, date: "2016-08-29")
@trip_3 = Itinerary.create!(user_id: @nk.id, city: "Paris, France", name: "Kool Bike Ride", price: "1000.0", description: "gunna be real kool", total_capacity: 3, spots_sold: 2, start_time: "2016-08-31 13:35:21", end_time: "2016-09-03 13:35:25", pic_url: nil, date: "2016-08-29")

ItineraryUser.create!([
  {itinerary_id: @trip_1.id, user_id: @ad.id},
  {itinerary_id: @trip_1.id, user_id: @ag.id},
  {itinerary_id: @trip_2.id, user_id: @nk.id},
  {itinerary_id: @trip_2.id, user_id: @ur.id},
  {itinerary_id: @trip_3.id, user_id: @ur.id}
])
