User.create!([
  {email: "test@test.com", encrypted_password: "$2a$10$pyEE2WW9sXH8DVYDT6kXpu59CCS2d4cUGDVYI9HjpPTUdC6AIQba6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-27 14:57:55", last_sign_in_at: "2015-11-27 14:57:55", current_sign_in_ip: "118.109.103.66", last_sign_in_ip: "118.109.103.66", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, family_men: 1, family_women: 0, zipcode: nil, address: nil, notification: 0, email_second: ""}
])
Item.create!([
  {name: "トイレットペーパー", spent_men: 3.5, spent_women: 12.5, spent_child: nil},
  {name: "ティッシュペーパー", spent_men: 10.0, spent_women: 15.0, spent_child: nil},
  {name: "ボディソープ", spent_men: 5.0, spent_women: 5.0, spent_child: nil},
  {name: "洗濯洗剤", spent_men: 16.5, spent_women: 16.5, spent_child: nil},
  {name: "シャンプー", spent_men: 4.5, spent_women: 9.0, spent_child: nil}
])
Stock.create!([
  {user_id: "1", item_id: 1, unit: 60, num: 12, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil},
  {user_id: "1", item_id: 2, unit: 160, num: 5, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil},
  {user_id: "1", item_id: 3, unit: 300, num: 1, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil},
  {user_id: "1", item_id: 4, unit: 300, num: 1, increase_day: 0, project_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, remarks: "", deleted_at: nil}
])
