json.array!(@tips) do |tip|
  json.extract! tip, :id, :received_at, :tx_id, :name, :email, :btc_amount_in_satoshis, :ltc_amount_in_satoshis, :doge_amount_in_satoshis, :sender_address, :usd_value_in_cents, :btc_fee_in_satoshis, :ltc_fee_in_satoshis, :doge_fee_in_satoshis, :recipient_address, :campaign_id, :fee_in_usd
  json.url tip_url(tip, format: :json)
end
