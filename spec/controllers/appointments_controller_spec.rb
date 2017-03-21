require "spec_helper"

describe AppointmentsController do
  describe "#new" do
    it "instantiate blank appointment" do
      get :new
      expect(assigns(:appointment)).to be_present
    end
  end
end
