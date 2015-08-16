module Waitlisted
  module Configuration
    module Base
      def reset
        if ENV['WAITLISTED_URL']
          @@configuration = OpenStruct.new(url: "#{ENV['WAITLISTED_URL']}")
        else
          @@configuration = OpenStruct.new
        end
      end
      def configure(&block)
        yield configuration
      end

      def configuration
        @@configuration
      end

      def self.extended(base)
        base.reset
      end
    end
  end
end
