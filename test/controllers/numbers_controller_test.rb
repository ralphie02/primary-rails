class NumbersControllerTest < ActionDispatch::IntegrationTest
  test "number create" do
    post create_url, params: { number: { value: 4 } }
    assert_response :success
  end

  test "number create with missing required key" do
    assert_raises(ActionController::ParameterMissing) do
      post create_url, params: { value: 4 }
    end
  end

  test "number create with non-permitted key -- ignored" do
    post create_url, params: { number: { value: 4, fake: 'attribute' } }
    assert_response :success
  end
end
