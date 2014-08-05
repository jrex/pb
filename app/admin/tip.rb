ActiveAdmin.register Tip do
  permit_params :received_at, :tx_id, :name, :email, :btc_amount_in_satoshis, :ltc_amount_in_satoshis, :doge_amount_in_satoshis, :sender_address, :usd_value_in_cents, :btc_fee_in_satoshis, :ltc_fee_in_satoshis, :doge_fee_in_satoshis, :recipient_address, :fee_in_usd


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
