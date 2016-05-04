require 'thor'

module Hanami
  module Auth
    def Auth.included(thor)
      thor.class_eval do
        desc 'auth', 'Generate an auth app'
        long_desc <<-EOS
        EOS
        def auth
          puts 'hello test'
          # if options[:help]
          #   invoke :help, ['app']
          # else
          #   require 'hanami/commands/generate/app'
          #   Hanami::Commands::Generate::App.new(options, application_name).start
          # end
        end
      end
    end
  end
end
