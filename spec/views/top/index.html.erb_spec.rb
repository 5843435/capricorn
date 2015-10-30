require 'rails_helper'

describe 'トップページ' do
  specify 'capricorn表示' do
    visit root_path
    expect(page).to have_css('h1', text: 'Capricorn')
  end
end
