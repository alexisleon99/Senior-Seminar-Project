module RequestFormsHelper
  def checked(area)
     @request_forms.Department.nil? ? false : @travel_forms.Department.match(area)
  end
end

