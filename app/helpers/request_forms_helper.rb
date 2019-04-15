module RequestFormsHelper
  def checked(area)
     @request_forms.Department.nil? ? false : @request_forms.Department.match(area)
  end
end

