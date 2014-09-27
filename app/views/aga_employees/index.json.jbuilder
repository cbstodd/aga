json.array!(@aga_employees) do |aga_employee|
  json.extract! aga_employee, :id, :name, :content
  json.url aga_employee_url(aga_employee, format: :json)
end
