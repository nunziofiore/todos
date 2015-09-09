json.array!(@notes) do |note|
  json.extract! note, :id, :content, :due_date
  json.url note_url(note, format: :json)
end