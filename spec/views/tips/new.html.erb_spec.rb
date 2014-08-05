require 'rails_helper'

RSpec.describe "tips/new", :type => :view do
  before(:each) do
    assign(:tip, Tip.new(
      :tx_id => 1,
      :name => "MyString",
      :email => "MyString",
      :btc_amount_in_satoshis => 1,
      :ltc_amount_in_satoshis => 1,
      :doge_amount_in_satoshis => 1,
      :sender_address => "MyString",
      :usd_value_in_cents => 1,
      :btc_fee_in_satoshis => 1,
      :ltc_fee_in_satoshis => 1,
      :doge_fee_in_satoshis => 1,
      :recipient_address => "MyString",
      :campaign => nil,
      :fee_in_usd => 1
    ))
  end

  it "renders new tip form" do
    render

    assert_select "form[action=?][method=?]", tips_path, "post" do

      assert_select "input#tip_tx_id[name=?]", "tip[tx_id]"

      assert_select "input#tip_name[name=?]", "tip[name]"

      assert_select "input#tip_email[name=?]", "tip[email]"

      assert_select "input#tip_btc_amount_in_satoshis[name=?]", "tip[btc_amount_in_satoshis]"

      assert_select "input#tip_ltc_amount_in_satoshis[name=?]", "tip[ltc_amount_in_satoshis]"

      assert_select "input#tip_doge_amount_in_satoshis[name=?]", "tip[doge_amount_in_satoshis]"

      assert_select "input#tip_sender_address[name=?]", "tip[sender_address]"

      assert_select "input#tip_usd_value_in_cents[name=?]", "tip[usd_value_in_cents]"

      assert_select "input#tip_btc_fee_in_satoshis[name=?]", "tip[btc_fee_in_satoshis]"

      assert_select "input#tip_ltc_fee_in_satoshis[name=?]", "tip[ltc_fee_in_satoshis]"

      assert_select "input#tip_doge_fee_in_satoshis[name=?]", "tip[doge_fee_in_satoshis]"

      assert_select "input#tip_recipient_address[name=?]", "tip[recipient_address]"

      assert_select "input#tip_campaign_id[name=?]", "tip[campaign_id]"

      assert_select "input#tip_fee_in_usd[name=?]", "tip[fee_in_usd]"
    end
  end
end
