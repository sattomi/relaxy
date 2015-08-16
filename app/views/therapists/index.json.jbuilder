json.array!(@therapists) do |therapist|
  json.extract! therapist, :id
  json.url therapist_url(therapist, format: :json)
end
