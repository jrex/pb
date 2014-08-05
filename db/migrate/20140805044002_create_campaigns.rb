class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :recipient
      t.string :redirect_url
      t.string :description
      t.boolean :bitcoin
      t.boolean :dogecoin
      t.boolean :litecoin
      t.string :btc_address
      t.string :dogecoin_address
      t.string :litecoin_address
      t.boolean :active
      t.integer :btc_total_in_satoshis
      t.integer :ltc_total_in_satoshis
      t.integer :doge_total_in_satoshis
      t.boolean :archived
      t.references :user, index: true

      t.timestamps
    end
  end
end
