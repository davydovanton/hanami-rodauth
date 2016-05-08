require 'hanami/environment'

module Hanami
  module Commands
    class Auth
      def initialize(options)
        @environment = Hanami::Environment.new(options)
        @environment.require_application_environment
      end

      def start
      end
    end
  end
end
