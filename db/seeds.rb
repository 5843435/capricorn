# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8
Item.create(:name => 'トイレットペーパー', :spent_men => 3.5, :spent_women => 12.5)
Item.create(:name => 'ティッシュペーパー', :spent_men => 10, :spent_women => 15)
Item.create(:name => 'ボディソープ', :spent_men => 5, :spent_women => 5)
Item.create(:name => '洗濯洗剤', :spent_men => 16.5, :spent_women => 16.5)
Item.create(:name => 'シャンプー', :spent_men => 4.5, :spent_women => 9)
