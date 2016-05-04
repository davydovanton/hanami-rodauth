require 'test_helper'
require 'hanami/cli'

describe Hanami::Cli do
  let(:default_options) do
    { 'architecture' => 'container' }
  end


  it 'calls the generator with application name and defaults' do
    ARGV.replace(%w{generate auth})
    assert_cli_calls_command(Hanami::Commands::Auth, {}) 
  end


  def assert_cli_calls_command(command_class, *expected_arguments)
    instance_mock = Minitest::Mock.new
    instance_mock.expect(:start, nil)

    constructor_args_verifier = lambda do |*actual_arguments|
      assert_equal expected_arguments.size, actual_arguments.size
      expected_arguments.each_with_index do |expected_argument, index|
        actual_argument = actual_arguments[index]
        message = "Expected argument #{index} to #{command_class.name} to be '#{expected_argument.inspect}' but was '#{actual_argument.inspect}'"
        assert_equal expected_argument, actual_argument, message
      end
      instance_mock
    end

    command_class.stub(:new, constructor_args_verifier) do
      capture_io { Hanami::Cli.start }
    end

    instance_mock.verify
  end
end
