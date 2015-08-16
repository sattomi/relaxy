require 'rails_helper'

RSpec.describe "therapists/index", type: :view do
  before(:each) do
    assign(:therapists, [
      Therapist.create!(),
      Therapist.create!()
    ])
  end

  it "renders a list of therapists" do
    render
  end
end
