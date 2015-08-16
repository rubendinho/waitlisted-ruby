require "ostruct"
require "faraday"
require "waitlisted/version"
require "waitlisted/configuration/base"
require "waitlisted/errors"

require "waitlisted/client"

require "waitlisted/models/base"
require "waitlisted/models/reservation"


module Waitlisted
  extend Configuration::Base
  extend Client
end