require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/course_modules/edit.html.erb" do
  include CourseModulesHelper
  
  before(:each) do
    assigns[:course_module] = @course_module = stub_model(CourseModule,
      :new_record? => false,
      :title => "value for title",
      :short => "value for short",
      :visible => false,
      :level => 1,
      :description => "value for description",
      :course => 1,
      :semester => 1
    )
  end

  it "renders the edit course_module form" do
    render
    
    response.should have_tag("form[action=#{course_module_path(@course_module)}][method=post]") do
      with_tag('input#course_module_title[name=?]', "course_module[title]")
      with_tag('input#course_module_short[name=?]', "course_module[short]")
      with_tag('input#course_module_visible[name=?]', "course_module[visible]")
      with_tag('input#course_module_level[name=?]', "course_module[level]")
      with_tag('textarea#course_module_description[name=?]', "course_module[description]")
      with_tag('input#course_module_course[name=?]', "course_module[course]")
      with_tag('input#course_module_semester[name=?]', "course_module[semester]")
    end
  end
end


