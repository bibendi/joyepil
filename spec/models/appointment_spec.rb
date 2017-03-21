require "spec_helper"

describe Appointment do
  context "when client is real" do
    it "valid" do
      client_params = {client_name: "Jhon", client_phone: "+7 (922) 456-78-90"}
      appointment = described_class.new(client_params)
      expect(appointment).to be_valid
    end
  end

  context "when client is bot" do
    it "invalid" do
      client_params = {client_name: "J", client_phone: "123"}
      appointment = described_class.new(client_params)
      expect(appointment).to_not be_valid
    end
  end
end
