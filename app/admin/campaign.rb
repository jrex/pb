ActiveAdmin.register Campaign do
  permit_params :title, :recipient, :redirect_url, :description, :bitcoin, :dogecoin, :litecoin, :btc_address, :dogecoin_address, :litecoin_address, :active, :btc_total_in_satoshis, :ltc_total_in_satoshis, :doge_total_in_satoshis, :archived


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
