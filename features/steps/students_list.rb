class Spinach::Features::StudentsList < Spinach::FeatureSteps
  step 'there are some students' do
   10.times do
      @student = Fabricate :student
       @student.save
    end
     Student.count.must_equal 341
  end

  step 'I go to the students list page' do
    visit students_path
    #pending 'step not implemented'
  end

  step 'I should see students list' do
     assert page.has_selector?("#students_list")
     #assert page.must_have_selector?("#students_list")
  end
end


