json.array!(@rebuttals) do |rebuttal|
  json.extract! rebuttal, :id, :thesis, :body
  json.url rebuttal_url(rebuttal, format: :json)
end
