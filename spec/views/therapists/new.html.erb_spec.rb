require 'rails_helper'

RSpec.describe "therapists/new", type: :view do
  before(:each) do
    assign(:therapist, Therapist.new())
  end

  it "renders new therapist form" do
    render

    assert_select "form[action=?][method=?]", therapists_path, "post" do
    end
  end
end
