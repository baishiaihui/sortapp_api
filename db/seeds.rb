# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/seeds/csv/SortInfo.csv', headers: true) do |row|
  SortInfo.create(
    name: row['品目名'],
    kana: row['読み'],
    sort: row['出し方（一覧）']
  )
end