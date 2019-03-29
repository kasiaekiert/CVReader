
require 'csv'


csv_text = File.read(Rails.root.join('lib', 'seeds', 'import_task1.csv'))
csv = CSV.parse(csv_text.scrub, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
    t = Candidate.find_or_create_by(email: row.to_hash['E-mail'])
    t.name = row.to_hash['Name']
    t.email = row.to_hash['E-mail']
    t.phone = row.to_hash['Phone']
    t.job = row.to_hash['Job']
    t.created = row.to_hash['Created at']
    t.save
    puts "#{row.to_hash}"
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'import_task2.csv'))
csv = CSV.parse(csv_text.scrub, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
    t = Candidate.find_or_create_by(email: row.to_hash['Email'])
    t.note = row.to_hash['Note']
    t.save
    puts "#{row.to_hash}"
end