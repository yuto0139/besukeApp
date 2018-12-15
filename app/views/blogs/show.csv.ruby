require 'csv'

CSV.generate do |csv|
  column_names = %w(id title body)
  csv << column_names
  @entries.each do |entry|
    column_values = [
      entry.id,
      entry.title,
      entry.body
    ]
    csv << column_values
  end
end
