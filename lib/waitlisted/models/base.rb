module Waitlisted
  class Base
    class << self
      def create(params)
        resp = post(api_base("/#{resource_name}"), params)
        parse_response(resp.body)
      end

      def show(params)
        resp = get(api_base("/#{resource_name}"), params)
        parse_response(resp.body)
      end

      protected
      def post(url, params)
        data = {}
        data[resource_name] = params
        Waitlisted.client.post(url, data)
      end

      def get(url, params)
        Waitlisted.client.get(url, params)
      end

      def parse_response(resp)
        self.new(JSON.parse(resp))
      end

      def api_base(route)
        "/api/v1#{route}"
      end

    end  
  end
end