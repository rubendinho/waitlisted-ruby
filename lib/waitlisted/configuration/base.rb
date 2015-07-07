module Waitlisted
  module Configuration
    module Base
      @@configuration = OpenStruct.new
      def configure(&block)
        yield configuration
      end

      def configuration
        @@configuration
      end
    end
  end
end