require 'hanami'
require 'hanami/auth'
require 'hanami/commands/auth'
require 'hanami/rodauth/version'
require 'hanami/cli_sub_commands/generate'

module Hanami
end

Hanami::CliSubCommands::Generate.add_cli_commands do
  desc 'auth', 'Generate an auth app'
  long_desc <<-EOS
  EOS
  def auth
    if options[:help]
      invoke :help, ['auth']
    else
      Hanami::Commands::Auth.new(options).start
    end
  end
end
