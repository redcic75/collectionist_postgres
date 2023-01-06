require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  test 'should display shop list in default language' do
    get '/shops'
    assert_response :success
    assert_select 'h1', 'Liste des magasins'
    shops.each do |shop|
      assert_select 'a', shop.name
    end
  end

  test 'should display shop list in english' do
    get '/en/shops'
    assert_response :success
    assert_select 'h1', "Shops' list"
    shops.each do |shop|
      assert_select 'a', shop.name
    end
  end

  test 'Should display shop1 schedule in default language' do
    shop1 = shops(:shop1)
    travel_to Date.new(2023, 1, 4) do
      # January the 4th of 2023 is a wednesday
      get "/shops/#{shop1.id}"
      assert_response :success
      assert_select 'h1', shop1.name
      assert_select 'tr:nth-child(1) th', 'Horaires :'
      assert_select 'tr:nth-child(1) td', 'mercredi'
      assert_select 'tr:nth-child(1) td', "09:00-12:00,\n            14:30-18:00"

      assert_select 'tr:nth-child(2) th', ''
      assert_select 'tr:nth-child(2) td', 'jeudi'
      assert_select 'tr:nth-child(2) td', 'Fermé'

      assert_select 'tr:nth-child(7) th', ''
      assert_select 'tr:nth-child(7) td', 'mardi'
      assert_select 'tr:nth-child(7) td', '06:00-12:00'

      assert_select 'tr:nth-child(8) th', false
      assert_select 'tr:nth-child(8) td', false
    end
  end
end
