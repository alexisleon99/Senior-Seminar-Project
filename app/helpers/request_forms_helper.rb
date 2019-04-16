module RequestFormsHelper
  def checked(area)
      @request_form.Department.nil? ? false : @request_form.Department.match(area)
  end
end

