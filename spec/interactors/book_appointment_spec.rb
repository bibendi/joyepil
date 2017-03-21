require "spec_helper"

describe BookAppointment do
  before { ActionMailer::Base.deliveries.clear }

  context "when params valid" do
    it "sends notification" do
      context = described_class.call(appointment_params: {client_name: "Jhon", client_phone: "+7 922 645-12-23"})
      expect(context).to be_success
      expect(ActionMailer::Base.deliveries.count).to eq 1
    end
  end

  context "when params invalid" do
    it "fails" do
      context = described_class.call(appointment_params: {client_name: "", client_phone: "+7 922 645-12-23"})
      expect(context).to be_failure
      expect(ActionMailer::Base.deliveries.count).to eq 0
    end
  end
end
