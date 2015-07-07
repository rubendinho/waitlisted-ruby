module Waitlisted
  class Reservation < Base
    class << self
      def resource_name_plural
        "reservations"
      end
      def resource_name
        "reservation"
      end
    end

    attr_accessor :id, :uuid, :affiliate, :email, :name, :position, :meta

    def initialize(params)
      rparams = params["reservation"]
      self.id = rparams["id"]
      self.uuid = rparams["uuid"]
      self.affiliate = rparams["affiliate"]
      self.email = rparams["email"]
      self.name = rparams["name"]
      self.position = rparams["position"]
      self.meta = params["meta"]
    end

  end
end