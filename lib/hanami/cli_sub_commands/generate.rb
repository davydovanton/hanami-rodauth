require 'thor'

module Hanami
  class CliSubCommands
    # A set of generator subcommands
    #
    # It is run with:
    #
    #   `bundle exec hanami generate`
    #
    # @since 0.6.0
    # @api private
    class Generate < Thor
      desc 'auth', 'Generate an auth app'
      long_desc <<-EOS
      EOS
      puts 'before'
      def auth
        puts 'hello test'
        # if options[:help]
        #   invoke :help, ['app']
        # else
        #   require 'hanami/commands/generate/app'
        #   Hanami::Commands::Generate::App.new(options, application_name).start
        # end
      end
      puts 'after'
    end
  end
end

