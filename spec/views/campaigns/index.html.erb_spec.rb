require 'rails_helper'

RSpec.describe "campaigns/index", :type => :view do
  before(:each) do
    assign(:campaigns, [
      Campaign.create!(
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
      ),
      Campaign.create!(
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
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient".to_s, :count => 2
    assert_select "tr>td", :text => "Redirect Url".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Btc Address".to_s, :count => 2
    assert_select "tr>td", :text => "Dogecoin Address".to_s, :count => 2
    assert_select "tr>td", :text => "Litecoin Address".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
