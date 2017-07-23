User.destroy_all
Quote.destroy_all
Hearing.destroy_all

##################
### TOS

# https://en.wikiquote.org/wiki/Star_Trek:_The_Original_Series

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

tos_quotes = [
  [
    leonard_mccoy,
    "The machine is capable of almost anything, but I'll still put my trust in a healthy set of tonsils.",
    [spock, scotty, captain_kirk]
  ],
  [
    spock,
    "It is illogical for a communications officer to resent the word 'frequency'.",
    [uhura]
  ],
  [
    spock,
    "Your illogical approach to chess does have its advantages on occasion, Captain.",
    [captain_kirk]
  ],
  [
    captain_kirk,
    "Go to your quarters or I'll pick you up and carry you there.",
    [spock, scotty]
  ],
  [
    captain_kirk,
    "Have I ever mentioned you play a very irritating game of chess, Mr. Spock?",
    [spock]
  ],
  [
    captain_kirk,
    "I believe there's some hope for you after all, Mr. Spock.",
    [spock, uhura]
  ],
  [
    leonard_mccoy,
    "We all have our darker side. We need it; it's half of what we are. It's not really ugly, it's human.",
    [spock, captain_kirk]
  ],
  [
    captain_kirk,
    "We humans are full of unpredictable emotions that logic cannot solve.",
    [uhura, scotty, spock]
  ]
]

tos_quotes.each do |quote|
  new_quote = Quote.create!(
    text: quote[1],
    said_by: quote[0].id
  )

  quote[2].each do |hearer|
    Hearing.create!(
      user_id: hearer.id,
      quote_id: new_quote.id
    )
  end
end

# [
#   ,
#   "",
#   []
# ],
