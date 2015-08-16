require 'rails_helper'

RSpec.describe "therapists/show", type: :view do
  before(:each) do
    @therapist = assign(:therapist, Therapist.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
