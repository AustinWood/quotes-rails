json.array! @quotes do |quote|
  json.extract! quote, :id, :text
  # json.said_by 
end
