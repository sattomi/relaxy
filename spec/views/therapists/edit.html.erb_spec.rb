require 'rails_helper'

RSpec.describe "therapists/edit", type: :view do
  before(:each) do
    @therapist = assign(:therapist, Therapist.create!())
  end

  it "renders the edit therapist form" do
    render

    assert_select "form[action=?][method=?]", therapist_path(@therapist), "post" do
    end
  end
end
