require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
    setup do
        login_vet
        @animal = FactoryBot.create(:animal)
    end

    test "should get index" do
        get animals_path
        assert_response :success
    end

    test "should show animal" do
        get pet_path(@animal)
        assert_response :success
    end

end