require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    def setup
        @r = Recipe.new(name: "vegies", description: "Good for health")
    end

    test "recipe should be valid" do
        assert @r.valid?
    end

    test "name should be present" do
        @r.name = " "
        assert_not @r.valid?
    end 

    test "description should be presnet" do
        @r.description = " "
        assert_not @r.valid?
    end 

    test "length of description should be more than 4 characetrs" do
        @r.description = 'a' * 4
        assert_not @r.valid?
    end

    test "descript should be less than 500 characers" do
        @r.description = 'a' * 501
        assert_not @r.valid?
    end 
end