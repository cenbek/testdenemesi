require "minitest_helper"

describe StudentsController do
  it "should get index" do
    get :index
    assert_response :success
  end

end
