require 'test_helper'

class ChefTest < ActiveSupport::TestCase
    def setup
        @c = Chef.new(name: "robin", email: "abc@gmail.com")

    end

    test "check validity if email format" do
        @r.email = 
end 