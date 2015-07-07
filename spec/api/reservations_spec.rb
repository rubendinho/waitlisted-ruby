require 'spec_helper'

describe Waitlisted::Reservation do
  context "Creating a new reservation" do
    before(:example) do
      Waitlisted.configure do |config|
        config.url = "https://waitlisted.app.waitlisted.co"
      end
    end
    it "should create a valid reservaiton" do
      VCR.use_cassette("reservation") do
        @reservation = Waitlisted::Reservation.create({reservation: {email: "test@test.com"}})
      end
      expect(@reservation.position).not_to be_nil
    end
    it "should pull an existing reservation" do
      VCR.use_cassette("reservation") do
        @reservation = Waitlisted::Reservation.show({email: "test@test.com"})
      end
      expect(@reservation.position).not_to be_nil
    end
  end
end
