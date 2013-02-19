require "minitest_helper"

# To be handled correctly this spec must end with "Integration Test"
describe "Student Integration Test" do
  before do
    get students_path
    10.times do
      @student = Fabricate :students
      @student.save
    end
    
    
  end
  
  it "should listing students successfuly" do
    #10.times do
    #  @student = Fabricate :student
    #  @student.save
    #end
    # Student.count.must_equal 10
    # path.must_equal students_path
    assert_response :success
    assert assigns(:students)
  end
end
