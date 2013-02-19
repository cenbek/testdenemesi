require "minitest_helper"

describe Student do
  before do
    @student = Student.new
  end

  it "must be valid" do
    @student.valid?.must_equal true
  end
end
