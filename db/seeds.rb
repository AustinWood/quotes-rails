User.destroy_all
Quote.destroy_all

# TOS

spock = User.create!(
  name: "Spock",
  phone_number: "7175888801",
  password: "password"
)

captain_kirk = User.create!(
  name: "Captain Kirk",
  phone_number: "7175888802",
  password: "password"
)

uhura = User.create!(
  name: "Uhura",
  phone_number: "7175888803",
  password: "password"
)

leonard_mccoy = User.create!(
  name: "Leonard McCoy",
  phone_number: "7175888804",
  password: "password"
)

scotty = User.create!(
  name: "Scotty",
  phone_number: "7175888805",
  password: "password"
)
