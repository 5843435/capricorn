require 'rails_helper'

describe 'トップページ' do
  specify 'ずぼらパンダ表示' do
    visit root_path
    expect(page).to have_css('h1', text: 'ずぼらパンダ')
  end
end
