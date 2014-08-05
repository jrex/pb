require 'rails_helper'

RSpec.describe "tips/index", :type => :view do
  before(:each) do
    assign(:tips, [
      Tip.create!(
        :tx_id => 1,
        :name => "Name",
        :email => "Email",
        :btc_amount_in_satoshis => 2,
        :ltc_amount_in_satoshis => 3,
        :doge_amount_in_satoshis => 4,
        :sender_address => "Sender Address",
        :usd_value_in_cents => 5,
        :btc_fee_in_satoshis => 6,
        :ltc_fee_in_satoshis => 7,
        :doge_fee_in_satoshis => 8,
        :recipient_address => "Recipient Address",
        :campaign => nil,
        :fee_in_usd => 9
      ),
      Tip.create!(
        :tx_id => 1,
        :name => "Name",
        :email => "Email",
        :btc_amount_in_satoshis => 2,
        :ltc_amount_in_satoshis => 3,
        :doge_amount_in_satoshis => 4,
        :sender_address => "Sender Address",
        :usd_value_in_cents => 5,
        :btc_fee_in_satoshis => 6,
        :ltc_fee_in_satoshis => 7,
        :doge_fee_in_satoshis => 8,
        :recipient_address => "Recipient Address",
        :campaign => nil,
        :fee_in_usd => 9
      )
    ])
  end

  it "renders a list of tips" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Sender Address".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "Recipient Address".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
  end
end
