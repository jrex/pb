require 'rails_helper'

RSpec.describe "campaigns/show", :type => :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :title => "Title",
      :recipient => "Recipient",
      :redirect_url => "Redirect Url",
      :description => "Description",
      :bitcoin => false,
      :dogecoin => false,
      :litecoin => false,
      :btc_address => "Btc Address",
      :dogecoin_address => "Dogecoin Address",
      :litecoin_address => "Litecoin Address",
      :active => false,
      :btc_total_in_satoshis => 1,
      :ltc_total_in_satoshis => 2,
      :doge_total_in_satoshis => 3,
      :archived => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Recipient/)
    expect(rendered).to match(/Redirect Url/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Btc Address/)
    expect(rendered).to match(/Dogecoin Address/)
    expect(rendered).to match(/Litecoin Address/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
