require 'rails_helper'

RSpec.describe "tips/show", :type => :view do
  before(:each) do
    @tip = assign(:tip, Tip.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Sender Address/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/Recipient Address/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9/)
  end
end
