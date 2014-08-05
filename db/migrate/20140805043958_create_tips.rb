class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.datetime :received_at
      t.integer :tx_id
      t.string :name
      t.string :email
      t.integer :btc_amount_in_satoshis
      t.integer :ltc_amount_in_satoshis
      t.integer :doge_amount_in_satoshis
      t.string :sender_address
      t.integer :usd_value_in_cents
      t.integer :btc_fee_in_satoshis
      t.integer :ltc_fee_in_satoshis
      t.integer :doge_fee_in_satoshis
      t.string :recipient_address
      t.references :campaign, index: true
      t.integer :fee_in_usd

      t.timestamps
    end
  end
end
