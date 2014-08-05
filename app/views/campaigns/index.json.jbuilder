json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :title, :recipient, :redirect_url, :description, :bitcoin, :dogecoin, :litecoin, :btc_address, :dogecoin_address, :litecoin_address, :active, :btc_total_in_satoshis, :ltc_total_in_satoshis, :doge_total_in_satoshis, :archived, :user_id
  json.url campaign_url(campaign, format: :json)
end
