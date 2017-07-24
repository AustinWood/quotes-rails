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

doctor_mccoy = User.create!(
  name: "Dr. McCoy",
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
    doctor_mccoy,
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
    doctor_mccoy,
    "We all have our darker side. We need it; it's half of what we are. It's not really ugly, it's human.",
    [spock, captain_kirk]
  ],
  [
    captain_kirk,
    "We humans are full of unpredictable emotions that logic cannot solve.",
    [uhura, scotty, spock]
  ],
  [
    spock,
    "Interesting. You Earth people glorify organized violence for forty centuries, but you imprison those who employ it privately.",
    [captain_kirk, doctor_mccoy]
  ],
  [
    spock,
    "Has it occurred to you that there's a certain... inefficiency in constantly questioning me on things you've already made up your mind about?",
    [captain_kirk, uhura]
  ],
  [
    spock,
    "I regret not having learned more about this Balok. He was reminiscent of my father.",
    [scotty, doctor_mccoy]
  ],
  [
    doctor_mccoy,
    "Sometimes a man will tell his bartender things that he'll never tell his doctor.",
    [captain_kirk]
  ],
  [
    doctor_mccoy,
    "A man either lives life as it happens to him, meets it head-on and licks it, or he turns his back on it and starts to wither away.",
    [captain_kirk]
  ],
  [
    spock,
    "If Romulans are an offshoot of my Vulcan blood, then attack becomes even more imperative.",
    [captain_kirk, doctor_mccoy]
  ],
  [
    doctor_mccoy,
    "In this galaxy, there's a mathematical probability of three million earth-type planets...and in all the universe, three million million galaxies like this one. And in all of that, and perhaps more, only one of each of us. Don't destroy the one named Kirk.",
    [spock]
  ],
  [
    spock,
    "On my planet, to rest is to rest — to cease using energy. To me, it is quite illogical to run up and down on green grass, using energy, instead of saving it.",
    [captain_kirk, doctor_mccoy, uhura, scotty]
  ],
  [
    captain_kirk,
    "The more complex the mind, the greater the need for the simplicity of play.",
    [spock, doctor_mccoy, uhura, scotty]
  ],
  [
    captain_kirk,
    "Mr. Spock, remind me to tell you that I'm sick and tired of your logic.",
    [spock]
  ],
  [
    doctor_mccoy,
    "Respect is a rational process. Didn't it ever occur to you that they might react emotionally...with anger?",
    [spock]
  ],
  [
    spock,
    "Doctor, I am not responsible for their unpredictability.",
    [doctor_mccoy]
  ],
  [
    captain_kirk,
    "You're not going to admit that for the first time in your life, you committed a purely human, emotional act?",
    [spock]
  ],
  [
    captain_kirk,
    "Oh, Mr. Spock, you do have one saving grace after all - you're ill mannered. The human half of you, no doubt.",
    [spock, doctor_mccoy]
  ],
  [
    captain_kirk,
    "We're living beings, not playthings for your amusement!",
    [uhura, doctor_mccoy, scotty]
  ],
  [
    captain_kirk,
    "Without freedom of choice there is no creativity.",
    [spock, uhura, scotty]
  ],
  [
    spock,
    "Superior ability breeds superior ambition.",
    [captain_kirk, scotty]
  ],
  [
    scotty,
    "Diplomats! The best diplomat I know is a fully activated phaser bank.",
    [captain_kirk, spock]
  ],
  [
    spock,
    "I have never understood the female capacity to avoid a direct answer to any question.",
    [uhura]
  ],
  [
    spock,
    "I've never stopped to look at clouds before. Or rainbows. You know, I can tell you exactly why one appears in the sky, but considering its beauty has always been out of the question.",
    [uhura, captain_kirk]
  ],
  [
    doctor_mccoy,
    "I'm a doctor not a bricklayer! That thing is practically made out of stone!",
    [captain_kirk, scotty]
  ],
  [
    spock,
    "It is curious how often you humans manage to obtain that which you do not want.",
    [captain_kirk, scotty]
  ],
  [
    captain_kirk,
    "Now, Mr. Spock and I are going to go out there... and quite probably die. In an attempt to show you... that there are some things... worth dying for.",
    [uhura]
  ],
  [
    spock,
    "Madness has no purpose. Or reason. But it may have a goal.",
    [captain_kirk, scotty]
  ],
  [
    spock,
    "I am endeavoring, Madam, to construct a mnemonic memory circuit using stone knives and bear skins.",
    [uhura]
  ],
  [
    spock,
    "Pain is a thing of the mind. The mind can be controlled.",
    [captain_kirk, scotty, doctor_mccoy]
  ],
  [
    captain_kirk,
    "Conquest is easy. Control is not.",
    [spock, doctor_mccoy, uhura]
  ],
  [
    captain_kirk,
    "In every revolution, there's one man with a vision.",
    [spock]
  ],
  [
    scotty,
    "If I push these impulse engines too hard in the condition they're in they'll blow apart!",
    [captain_kirk, spock]
  ],
  [
    spock,
    "Logic is a little tweeting bird, chirping in a meadow. Logic is a wreath of pretty flowers which smell bad.",
    [uhura, scotty]
  ],
  [
    captain_kirk,
    "We're on over a thousand worlds and spreading out. Life is everywhere.",
    [spock, doctor_mccoy]
  ],
  [
    captain_kirk,
    "An obscure Earth dialect, Mr. Spock. Oochy-woochy-koochy-coo. If you're curious, consult linguistics.",
    [spock]
  ],
  [
    captain_kirk,
    "Don't talk to me about rank! The man's a chair-bound paper-pusher! I order you to take command.",
    [spock, scotty]
  ],
  [
    doctor_mccoy,
    "I'm not a magician, Spock - just an old country doctor.",
    [spock]
  ],
  [
    captain_kirk,
    "Intuition, however illogical, Mr. Spock, is recognized as a command prerogative.",
    [spock]
  ],
  [
    spock,
    "In the strict scientific sense, Doctor, we all feed on death, even vegetarians.",
    [doctor_mccoy]
  ],
  [
    spock,
    "Captain, you are an excellent starship commander. But as a taxi driver, you leave much to be desired.",
    [captain_kirk]
  ],
  [
    doctor_mccoy,
    "Compassion: that's the one things no machine ever had. Maybe it's the one thing that keeps men ahead of them.",
    [scotty, captain_kirk]
  ],
  [
    spock,
    "Change is the essential process of all existence.",
    [captain_kirk, doctor_mccoy]
  ],
  [
    scotty,
    "I've seen the captain feverish, sick, drunk, delirious, terrified, overjoyed, boiling mad. But up to now, I have never seen him red-faced with hysteria.",
    [doctor_mccoy]
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
