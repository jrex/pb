# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :campaign do
    title "MyString"
    recipient "MyString"
    redirect_url "MyString"
    description "MyString"
    bitcoin false
    dogecoin false
    litecoin false
    btc_address "MyString"
    dogecoin_address "MyString"
    litecoin_address "MyString"
    active false
    btc_total_in_satoshis 1
    ltc_total_in_satoshis 1
    doge_total_in_satoshis 1
    archived false
    user nil
  end
end
