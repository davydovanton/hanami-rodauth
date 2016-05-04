require 'hanami'
require 'hanami/auth'
require 'hanami/commands/auth'
require 'hanami/rodauth/version'
require 'hanami/cli_sub_commands/generate'

module Hanami
end
Hanami::CliSubCommands::Generate.include Hanami::Auth
