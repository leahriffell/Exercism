begin
  gem 'minitest', '>= 5.0.0'
  require 'minitest/autorun'
  require_relative 'hello_world'
rescue Gem::LoadError => e
  puts "\nMissing Dependency:\n#{e.backtrace.first} #{e.message}"
  puts 'Minitest 5.0 gem must be installed for the Ruby track.'
rescue LoadError => e
  puts "\nError:\n#{e.backtrace.first} #{e.message}"
  puts DATA.read
  exit 1
end

# Common test data version: 1.1.0 be3ae66
class HelloWorldTest < Minitest::Test
  def test_say_hi
    assert_equal "Hello, World!", HelloWorld.hello
  end
end