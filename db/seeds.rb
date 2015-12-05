Item.create!([
  {name: "トイレットペーパー", spent_men: 3.5, spent_women: 12.5, spent_child: nil},
  {name: "ティッシュペーパー", spent_men: 10.0, spent_women: 15.0, spent_child: nil},
  {name: "ボディソープ", spent_men: 5.0, spent_women: 5.0, spent_child: nil},
  {name: "洗濯洗剤", spent_men: 2.8, spent_women: 3.0, spent_child: nil},
  {name: "シャンプー", spent_men: 4.5, spent_women: 9.0, spent_child: nil}
])
Stock.create!([
  {user_id: "1", item_id: 1, unit: 60, num: 12, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil},
  {user_id: "1", item_id: 2, unit: 160, num: 5, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil},
  {user_id: "1", item_id: 3, unit: 300, num: 1, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil},
  {user_id: "1", item_id: 4, unit: 300, num: 1, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil}
])
