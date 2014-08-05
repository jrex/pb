# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tip do
    received_at "2014-08-05 04:39:58"
    tx_id 1
    name "MyString"
    email "MyString"
    btc_amount_in_satoshis 1
    ltc_amount_in_satoshis 1
    doge_amount_in_satoshis 1
    sender_address "MyString"
    usd_value_in_cents 1
    btc_fee_in_satoshis 1
    ltc_fee_in_satoshis 1
    doge_fee_in_satoshis 1
    recipient_address "MyString"
    campaign nil
    fee_in_usd 1
  end
end
