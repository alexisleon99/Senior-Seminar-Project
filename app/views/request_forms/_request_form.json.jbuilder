json.extract! request_form, :id, :Department, :amount, :created_at, :updated_at
json.url request_form_url(request_form, format: :json)
