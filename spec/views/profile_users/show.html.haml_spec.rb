require 'rails_helper'

RSpec.describe "profile_users/show", type: :view do
  before(:each) do
    @profile_user = assign(:profile_user, ProfileUser.create!(
      profile: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
