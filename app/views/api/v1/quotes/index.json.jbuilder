json.array! @quotes do |quote|

  json.extract! quote, :id, :text

  json.speaker do
    json.id quote.speaker.id
    json.name quote.speaker.name
  end

  hearers = quote.hearings.map do |hearing|
    hearing.user.name
  end

  json.hearers hearers

end
