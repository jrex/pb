require 'rails_helper'

RSpec.describe "campaigns/new", :type => :view do
  before(:each) do
    assign(:campaign, Campaign.new(
      :title => "MyString",
      :recipient => "MyString",
      :redirect_url => "MyString",
      :description => "MyString",
      :bitcoin => false,
      :dogecoin => false,
      :litecoin => false,
      :btc_address => "MyString",
      :dogecoin_address => "MyString",
      :litecoin_address => "MyString",
      :active => false,
      :btc_total_in_satoshis => 1,
      :ltc_total_in_satoshis => 1,
      :doge_total_in_satoshis => 1,
      :archived => false,
      :user => nil
    ))
  end

  it "renders new campaign form" do
    render

    assert_select "form[action=?][method=?]", campaigns_path, "post" do

      assert_select "input#campaign_title[name=?]", "campaign[title]"

      assert_select "input#campaign_recipient[name=?]", "campaign[recipient]"

      assert_select "input#campaign_redirect_url[name=?]", "campaign[redirect_url]"

      assert_select "input#campaign_description[name=?]", "campaign[description]"

      assert_select "input#campaign_bitcoin[name=?]", "campaign[bitcoin]"

      assert_select "input#campaign_dogecoin[name=?]", "campaign[dogecoin]"

      assert_select "input#campaign_litecoin[name=?]", "campaign[litecoin]"

      assert_select "input#campaign_btc_address[name=?]", "campaign[btc_address]"

      assert_select "input#campaign_dogecoin_address[name=?]", "campaign[dogecoin_address]"

      assert_select "input#campaign_litecoin_address[name=?]", "campaign[litecoin_address]"

      assert_select "input#campaign_active[name=?]", "campaign[active]"

      assert_select "input#campaign_btc_total_in_satoshis[name=?]", "campaign[btc_total_in_satoshis]"

      assert_select "input#campaign_ltc_total_in_satoshis[name=?]", "campaign[ltc_total_in_satoshis]"

      assert_select "input#campaign_doge_total_in_satoshis[name=?]", "campaign[doge_total_in_satoshis]"

      assert_select "input#campaign_archived[name=?]", "campaign[archived]"

      assert_select "input#campaign_user_id[name=?]", "campaign[user_id]"
    end
  end
end
